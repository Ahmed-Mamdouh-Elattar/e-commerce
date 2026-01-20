import 'package:e_commerce/feature/wishlist/data/repositories/wishlist_repo_impl_provider.dart';
import 'package:e_commerce/feature/wishlist/domain/repositories/wishlist_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RemoveFromWishlistUsecase {
  final WishlistRepo _wishlistRepo;
  RemoveFromWishlistUsecase({required WishlistRepo wishlistRepo})
    : _wishlistRepo = wishlistRepo;
  Future<void> execute(String productId) async {
    await _wishlistRepo.removeFromWishlist(productId);
  }
}

final removeFromWishlistUsecaseProvider = Provider<RemoveFromWishlistUsecase>(
  (ref) => RemoveFromWishlistUsecase(
    wishlistRepo: ref.watch(wishlistRepoImplProvider),
  ),
);
