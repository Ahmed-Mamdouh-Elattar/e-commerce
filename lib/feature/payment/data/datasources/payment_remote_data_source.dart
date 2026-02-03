import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/core/models/orders_model.dart';
import 'package:e_commerce/core/models/oreder_item_model.dart';
import 'package:e_commerce/core/services/stripe_service/stripe_service.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class PaymentRemoteDataSource {
  Future<void> makePayment({required double amount});
}

class PaymentRemoteDataSourceImpl implements PaymentRemoteDataSource {
  final StripeService _stripeService;
  PaymentRemoteDataSourceImpl(this._stripeService);
  @override
  Future<void> makePayment({required double amount}) async {
    try {
      final paymentId = await _stripeService.makePayment(amount: amount);
      final userId = Supabase.instance.client.auth.currentUser?.id;
      if (userId == null) {
        throw Failure(message: "User not found");
      }
      final response = await Supabase.instance.client
          .from('addresses')
          .select('id')
          .eq('user_id', userId)
          .eq('is_default', true)
          .single();
      final addressId = response['id'];
      final orderResponse = await Supabase.instance.client
          .from('orders')
          .insert(
            OrdersModel(
              userId: userId,
              addressId: addressId,
              paymentId: paymentId,
              totalPrice: amount,
              status: 'Paid',
            ).toMap(),
          )
          .select('id')
          .single();
      final orderId = orderResponse['id'];
      final cartItems = await Supabase.instance.client
          .from('cart')
          .select('*')
          .eq('user_id', userId);
      for (var item in cartItems) {
        await Supabase.instance.client
            .from('order_items')
            .insert(
              OrederItemModel(
                orderId: orderId,
                productId: item['product_id'],
                quantity: item['quantity'],
                color: item['color'],
                size: item['size'],
              ).toMap(),
            );
      }
      await Supabase.instance.client
          .from('cart')
          .delete()
          .eq('user_id', userId);
    } on PostgrestException catch (e) {
      throw Failure(message: e.message);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }
}
