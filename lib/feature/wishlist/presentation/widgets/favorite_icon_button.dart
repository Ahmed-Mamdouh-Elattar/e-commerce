import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/feature/wishlist/presentation/provider/add_or_remove_product_from_wishlist_provider/add_or_remove_product_from_wishlist_provider.dart';
import 'package:e_commerce/feature/wishlist/presentation/provider/get_wishlist_product_id_provider/get_wishlist_product_ids_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

class FavoriteIconButton extends HookConsumerWidget {
  const FavoriteIconButton({required this.productId, super.key});
  final String productId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isActuallyFavorite = ref.watch(
      getWishlistProductIdsProvider.select(
        (value) => value.value?.contains(productId) ?? false,
      ),
    );
    final optimisticIsFavorite = useState(isActuallyFavorite);
    useEffect(() {
      optimisticIsFavorite.value = isActuallyFavorite;
      return null;
    }, [isActuallyFavorite]);
    ref.listen(addOrRemoveProductFromWishlistProvider, (previous, next) {
      next.maybeWhen(
        error: (error, stackTrace) {
          optimisticIsFavorite.value = isActuallyFavorite;
        },
        orElse: () {},
      );
    });
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        ref
            .read(addOrRemoveProductFromWishlistProvider.notifier)
            .toggleProductFromWishlist(optimisticIsFavorite.value, productId);
        optimisticIsFavorite.value = !optimisticIsFavorite.value;
      },
      icon: VectorGraphic(
        height: optimisticIsFavorite.value ? 30.h : 24.h,
        width: optimisticIsFavorite.value ? 30.w : 24.w,
        loader: AssetBytesLoader(
          optimisticIsFavorite.value
              ? Assets.svg.heart
              : Assets.svg.balckFavorite,
        ),
      ),
    );
  }
}
