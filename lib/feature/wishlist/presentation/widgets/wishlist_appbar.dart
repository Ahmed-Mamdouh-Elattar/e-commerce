import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/widgets/back_icon_button.dart';
import 'package:e_commerce/feature/wishlist/presentation/provider/get_wishlist_products_provider/get_wishlist_products_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WishlistAppBar extends ConsumerWidget {
  const WishlistAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wishlistProducts = ref.watch(getWishlistProductsProvider);
    return SliverAppBar(
      pinned: true,
      leading: const BackIconButton(),
      title: Text("My Favorites (${wishlistProducts.value?.length})"),
      bottom: wishlistProducts.isReloading
          ? PreferredSize(
              preferredSize: const Size.fromHeight(32),
              child: Center(
                child: Column(
                  children: [
                    LinearProgressIndicator(
                      color: AppColor.primary100,
                      backgroundColor: context.isDarkMode
                          ? AppColor.bgDark2
                          : AppColor.bgLight2,
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            )
          : const PreferredSize(
              preferredSize: Size.fromHeight(32),
              child: SizedBox(),
            ),
    );
  }
}
