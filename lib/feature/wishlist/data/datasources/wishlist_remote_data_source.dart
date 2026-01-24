import 'package:e_commerce/core/error/constants_error_messages.dart';
import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/core/models/product_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class WishlistRemoteDataSource {
  Future<void> addToWishlist(String productId);
  Future<void> removeFromWishlist(String productId);
  Future<List<String>> getWishlistProductIds();
  Future<List<ProductModel>> getWishlistProducts(List<String> productIds);
}

class WishlistRemoteDataSourceImpl implements WishlistRemoteDataSource {
  @override
  Future<void> addToWishlist(String productId) async {
    try {
      final userId = Supabase.instance.client.auth.currentUser?.id;
      if (userId == null) {
        throw Failure(message: ErrorMessages.userNotLoggedIn.message);
      }
      await Supabase.instance.client.from("wishlist").insert({
        "user_id": userId,
        "product_id": productId,
      });
    } on PostgrestException catch (e) {
      throw Failure(message: e.message);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }

  @override
  Future<void> removeFromWishlist(String productId) async {
    try {
      final userId = Supabase.instance.client.auth.currentUser?.id;
      if (userId == null) {
        throw Failure(message: ErrorMessages.userNotLoggedIn.message);
      }
      await Supabase.instance.client
          .from("wishlist")
          .delete()
          .eq("user_id", userId)
          .eq("product_id", productId);
    } on PostgrestException catch (e) {
      throw Failure(message: e.message);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }

  @override
  Future<List<String>> getWishlistProductIds() async {
    try {
      final userId = Supabase.instance.client.auth.currentUser?.id;
      if (userId == null) {
        throw Failure(message: ErrorMessages.userNotLoggedIn.message);
      }
      final response = await Supabase.instance.client
          .from("wishlist")
          .select("product_id")
          .eq("user_id", userId);
      return response.map((e) => e["product_id"] as String).toList();
    } on PostgrestException catch (e) {
      throw Failure(message: e.message);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }

  @override
  Future<List<ProductModel>> getWishlistProducts(
    List<String> productIds,
  ) async {
    try {
      final response = await Supabase.instance.client
          .from("products")
          .select("id, title, price, images")
          .inFilter("id", productIds);
      return response.map((e) => ProductModel.fromJson(e)).toList();
    } on PostgrestException catch (e) {
      throw Failure(message: e.message);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }
}
