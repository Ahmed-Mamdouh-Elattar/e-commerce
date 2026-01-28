import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/feature/cart/data/models/cart_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class CartRemoteDataSource {
  Future<void> addToCart(CartModel productCart);
  Future<List<CartModel>> getCartProducts();
  Future<void> removeAllCartProducts();
  Future<void> updateCartProductQuantity(CartModel cartProduct);
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

  @override
  Future<List<CartModel>> getCartProducts() async {
    try {
      final user = Supabase.instance.client.auth.currentUser;

      final response = await Supabase.instance.client
          .from('cart')
          .select('''
    *,
    product:products (
      id,
      title,
      images,
      price
    ) 
  ''')
          .eq('user_id', user!.id);
      return response.map((e) => CartModel.fromMap(e)).toList();
    } on PostgrestException catch (e) {
      throw Failure(message: e.message);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }

  @override
  Future<void> removeAllCartProducts() async {
    try {
      final user = Supabase.instance.client.auth.currentUser;
      if (user == null) {
        throw Failure(message: "User is not authenticated");
      }
      await Supabase.instance.client
          .from("cart")
          .delete()
          .eq("user_id", user.id);
    } on PostgrestException catch (e) {
      throw Failure(message: e.message);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }

  @override
  Future<void> updateCartProductQuantity(CartModel cartProduct) async {
    try {
      final user = Supabase.instance.client.auth.currentUser;
      if (user == null) {
        throw Failure(message: "User is not authenticated");
      }
      await Supabase.instance.client
          .from("cart")
          .update(cartProduct.toMap())
          .eq("user_id", user.id)
          .eq("product_id", cartProduct.productId!)
          .eq("size", cartProduct.size!)
          .eq("color", cartProduct.color!);
    } on PostgrestException catch (e) {
      throw Failure(message: e.message);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }
}
