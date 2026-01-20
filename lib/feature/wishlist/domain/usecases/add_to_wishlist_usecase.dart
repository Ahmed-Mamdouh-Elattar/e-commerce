import 'package:e_commerce/feature/wishlist/data/repositories/wishlist_repo_impl_provider.dart';
import 'package:e_commerce/feature/wishlist/domain/repositories/wishlist_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddToWishlistUseCase {
  final WishlistRepo _wishlistRepo;
  AddToWishlistUseCase({required WishlistRepo wishlistRepo})
    : _wishlistRepo = wishlistRepo;
  Future<void> execute(String productId) async {
    await _wishlistRepo.addToWishlist(productId);
  }
}

final addToWishlistUseCaseProvider = Provider<AddToWishlistUseCase>(
  (ref) =>
      AddToWishlistUseCase(wishlistRepo: ref.watch(wishlistRepoImplProvider)),
);
