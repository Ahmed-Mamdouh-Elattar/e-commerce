import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/feature/cart/data/models/cart_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class CartRemoteDataSource {
  Future<void> addToCart(CartModel productCart);
}

class CartRemoteDataSourceImpl implements CartRemoteDataSource {
  @override
  Future<void> addToCart(CartModel productCart) async {
    try {
      final user = Supabase.instance.client.auth.currentUser;
      if (user == null) {
        throw Failure(message: "User is not authenticated");
      }
      productCart = productCart.copyWith(userId: user.id);
      await Supabase.instance.client
          .from("cart")
          .upsert(
            productCart.toMap(),
            onConflict: 'user_id,product_id,size,color',
          );
    } on PostgrestException catch (e) {
      throw Failure(message: e.message);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }
}
