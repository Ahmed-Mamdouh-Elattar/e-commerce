abstract class WishlistRepo {
  Future<void> addToWishlist(String productId);
  Future<void> removeFromWishlist(String productId);
  Future<List<String>> getWishlistProductIds();
}
