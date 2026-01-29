import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/helper/show_custom_dialogs.dart';
import 'package:e_commerce/feature/cart/presentation/providers/get_cart_products_provider/get_cart_products_provider.dart';
import 'package:e_commerce/feature/cart/presentation/providers/remove_cart_product_provider/remove_cart_product_provider.dart';
import 'package:e_commerce/feature/cart/presentation/widgets/cart_page_body_content.dart';
import 'package:e_commerce/feature/cart/presentation/widgets/empty_cart_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartPageBody extends ConsumerWidget {
  const CartPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getCartProducts = ref.watch(getCartProductsProvider);
    ref.listen(getCartProductsProvider, (previous, next) {
      if (previous!.hasValue && next.isRefreshing) {
        showLoadingDialog(context);
      }
      if (previous.isRefreshing) {
        context.pop();
      }
    });
    ref.listen(removeCartProductProvider, (previous, next) {
      next.maybeWhen(
        orElse: () {
          //pop the loading dialog
          context.pop();
        },

        loading: () {
          //pop the confirmation dialog
          context.pop();
          showLoadingDialog(context);
        },
        error: (error, stackTrace) {
          //pop the loading dialog
          context.pop();
          showMessageDialog(
            context,
            message: error.toString(),
            image: Assets.images.error.path,
          );
        },
      );
    });
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: getCartProducts.when(
        data: (data) {
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
