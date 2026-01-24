import 'package:e_commerce/core/entities/product_entity.dart';
import 'package:e_commerce/feature/wishlist/domain/usecases/get_wishlist_products.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final getWishlistProductsProvider = FutureProvider.family
    .autoDispose<List<ProductEntity>, List<String>>((ref, productIds) async {
      final getWishlistProductsUseCase = ref.watch(
        getWishlistProductsUseCaseProvider,
      );
      return await getWishlistProductsUseCase.call(productIds);
    });
