import 'package:e_commerce/feature/wishlist/domain/usecases/get_wishlist_product_ids_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_wishlist_product_ids_provider.g.dart';

@riverpod
class GetWishlistProductIds extends _$GetWishlistProductIds {
  @override
  Future<List<String>> build() async {
    return ref.watch(getWishlistProductIdsUseCaseProvider).call();
  }
}
