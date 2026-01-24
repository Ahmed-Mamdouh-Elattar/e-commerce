import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/widgets/products_grid_list.dart';
import 'package:e_commerce/feature/wishlist/presentation/provider/get_wishlist_products_provider/get_wishlist_products_provider.dart';
import 'package:e_commerce/feature/wishlist/presentation/widgets/empty_wishlist_page.dart';
import 'package:e_commerce/feature/wishlist/presentation/widgets/wishlist_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WishlistPageBody extends ConsumerWidget {
  const WishlistPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wishlistProducts = ref.watch(getWishlistProductsProvider);
    return wishlistProducts.when(
      data: (products) {
        return CustomScrollView(
          slivers: [
            const WishlistAppBar(),
            products.isEmpty
                ? const SliverFillRemaining(
                    hasScrollBody: false,
                    child: EmptyWishListPage(),
                  )
                : SliverPadding(
                    padding: const EdgeInsets.symmetric(horizontal: kPadding),
                    sliver: ProductsGridList(products: products),
                  ),
          ],
        );
      },
      error: (error, stackTrace) {
        return Center(child: Text(error.toString()));
      },
      loading: () {
        return const Center(child: CircularProgressIndicator());
      },
      skipLoadingOnReload: true,
    );
  }
}
