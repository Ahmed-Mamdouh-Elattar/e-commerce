import 'package:e_commerce/core/models/product_model.dart';

abstract class WishlistRepo {
  Future<void> addToWishlist(String productId);
  Future<void> removeFromWishlist(String productId);
  Future<List<String>> getWishlistProductIds();
  Future<List<ProductModel>> getWishlistProducts(List<String> productIds);
}
