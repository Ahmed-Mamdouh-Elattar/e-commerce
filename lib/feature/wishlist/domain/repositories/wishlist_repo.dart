import 'package:e_commerce/core/entities/product_entity.dart';

abstract class WishlistRepo {
  Future<void> addToWishlist(String productId);
  Future<void> removeFromWishlist(String productId);
  Future<List<String>> getWishlistProductIds();
  Future<List<ProductEntity>> getWishlistProducts(List<String> productIds);
}
