import 'package:e_commerce/core/entities/product_entity.dart';
import 'package:e_commerce/feature/wishlist/domain/usecases/get_wishlist_products.dart';
import 'package:e_commerce/feature/wishlist/presentation/provider/get_wishlist_product_id_provider/get_wishlist_product_ids_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final getWishlistProductsProvider =
    FutureProvider.autoDispose<List<ProductEntity>>((ref) async {
      if (!ref.mounted) {
        return [];
      }
      final productIds = ref.watch(getWishlistProductIdsProvider);
      final getWishlistProductsUseCase = ref.watch(
        getWishlistProductsUseCaseProvider,
      );
      if (productIds.value == null || productIds.value!.isEmpty) {
        return [];
      }
      return await getWishlistProductsUseCase.call(productIds.value!);
    });
