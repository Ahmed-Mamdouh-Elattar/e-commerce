import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:e_commerce/core/entities/product_entity.dart';
import 'package:e_commerce/feature/wishlist/domain/usecases/get_wishlist_products.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final getWishlistProductsProvider =
    FutureProvider.autoDispose<List<ProductEntity>>((ref) async {
      final getWishlistProductsUseCase = ref.watch(
        getWishlistProductsUseCaseProvider,
      );
      return await getWishlistProductsUseCase.call();
    });
