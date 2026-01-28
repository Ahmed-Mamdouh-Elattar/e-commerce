import 'package:e_commerce/feature/cart/presentation/providers/get_cart_products_provider/get_cart_products_provider.dart';
import 'package:e_commerce/feature/cart/presentation/widgets/cart_product_item.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SliverListCartProductsItemsBuilder extends ConsumerWidget {
  const SliverListCartProductsItemsBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(getCartProductsProvider);
    return SliverList.separated(
      itemCount: products.value?.length ?? 0,
      separatorBuilder: (context, index) {
        return const SizedBox(height: 8);
      },
      itemBuilder: (context, index) {
        return CartProductItem(cartProduct: products.value![index]);
      },
    );
  }
}
