import 'package:e_commerce/core/entities/product_entity.dart';
import 'package:e_commerce/feature/wishlist/data/repositories/wishlist_repo_impl_provider.dart';
import 'package:e_commerce/feature/wishlist/domain/repositories/wishlist_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GetWishlistProducts {
  final WishlistRepo _wishlistRepo;
  GetWishlistProducts({required WishlistRepo wishlistRepo})
    : _wishlistRepo = wishlistRepo;
  Future<List<ProductEntity>> call(List<String> productIds) async {
    return await _wishlistRepo.getWishlistProducts(productIds);
  }
}

final getWishlistProductsUseCaseProvider = Provider<GetWishlistProducts>((ref) {
  final wishlistRepo = ref.watch(wishlistRepoImplProvider);
  return GetWishlistProducts(wishlistRepo: wishlistRepo);
});
