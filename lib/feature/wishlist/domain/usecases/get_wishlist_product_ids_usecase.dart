import 'package:e_commerce/feature/wishlist/data/repositories/wishlist_repo_impl_provider.dart';
import 'package:e_commerce/feature/wishlist/domain/repositories/wishlist_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GetWishlistProductIdsUsecase {
  final WishlistRepo _wishlistRepo;
  GetWishlistProductIdsUsecase({required WishlistRepo wishlistRepo})
    : _wishlistRepo = wishlistRepo;
  Future<List<String>> call() async {
    return await _wishlistRepo.getWishlistProductIds();
  }
}

final getWishlistProductIdsUseCaseProvider =
    Provider<GetWishlistProductIdsUsecase>(
      (ref) => GetWishlistProductIdsUsecase(
        wishlistRepo: ref.read(wishlistRepoImplProvider),
      ),
    );
