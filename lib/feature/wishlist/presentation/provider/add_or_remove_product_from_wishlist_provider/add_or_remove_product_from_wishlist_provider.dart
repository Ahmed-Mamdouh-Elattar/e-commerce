import 'package:e_commerce/feature/wishlist/domain/usecases/add_to_wishlist_usecase.dart';
import 'package:e_commerce/feature/wishlist/domain/usecases/remove_from_wishlist_usecase.dart';
import 'package:e_commerce/feature/wishlist/presentation/provider/get_wishlist_product_id_provider/get_wishlist_product_ids_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'add_or_remove_product_from_wishlist_provider.g.dart';

@riverpod
class AddOrRemoveProductFromWishlist extends _$AddOrRemoveProductFromWishlist {
  @override
  FutureOr<void> build() {
    ref.keepAlive();
  }

  Future<void> toggleProductFromWishlist(
    bool isFavorite,
    String productId,
  ) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      if (isFavorite) {
        await ref.read(removeFromWishlistUsecaseProvider).call(productId);
      } else {
        await ref.read(addToWishlistUseCaseProvider).call(productId);
      }
    });
    ref.invalidate(getWishlistProductIdsProvider);
  }
}
