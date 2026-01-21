import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/feature/wishlist/presentation/provider/add_or_remove_product_from_wishlist_provider/add_or_remove_product_from_wishlist_provider.dart';
import 'package:e_commerce/feature/wishlist/presentation/provider/get_wishlist_product_id_provider/get_wishlist_product_ids_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

class FavoriteIconButtonWithCircleShape extends HookConsumerWidget {
  const FavoriteIconButtonWithCircleShape({required this.productId, super.key});

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
      icon: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: context.isDarkMode ? AppColor.bgDark2 : AppColor.bgLight2,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: VectorGraphic(
            height: optimisticIsFavorite.value ? 20 : 16,
            width: optimisticIsFavorite.value ? 20 : 16,
            loader: AssetBytesLoader(
              optimisticIsFavorite.value
                  ? Assets.svg.heart
                  : Assets.svg.balckFavorite,
            ),
          ),
        ),
      ),
      onPressed: () {
        ref
            .read(addOrRemoveProductFromWishlistProvider.notifier)
            .toggleProductFromWishlist(optimisticIsFavorite.value, productId);
        optimisticIsFavorite.value = !optimisticIsFavorite.value;
      },
    );
  }
}
