import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/feature/cart/presentation/providers/get_cart_products_provider/get_cart_products_provider.dart';
import 'package:e_commerce/feature/cart/presentation/widgets/cart_page_body_content.dart';
import 'package:e_commerce/feature/cart/presentation/widgets/empty_cart_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartPageBody extends ConsumerWidget {
  const CartPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getCartProducts = ref.watch(getCartProductsProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: getCartProducts.when(
        data: (data) {
          if (getCartProducts.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (data.isEmpty) {
            return const EmptyCartPage();
          }
          return const CartPageBodyContent();
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stackTrace) => Center(child: Text(error.toString())),
      ),
    );
  }
}
