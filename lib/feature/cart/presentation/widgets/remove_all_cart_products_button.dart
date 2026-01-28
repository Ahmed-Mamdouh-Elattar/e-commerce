import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/helper/show_custom_dialogs.dart';
import 'package:e_commerce/feature/cart/presentation/providers/remove_all_cart_products_provider/remove_all_cart_products_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RemoveAllCartProductsButton extends ConsumerWidget {
  const RemoveAllCartProductsButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(removeAllCartProductsProvider, (previous, next) {
      next.when(
        data: (_) {
          context.pop();
        },
        error: (error, stackTrace) {
          context.pop();
          showMessageDialog(
            context,
            message: error.toString(),
            image: Assets.images.error.path,
          );
        },
        loading: () {
          showLoadingDialog(context);
        },
      );
    });
    return TextButton(
      onPressed: () {
        ref
            .read(removeAllCartProductsProvider.notifier)
            .removeAllCartProducts();
      },
      style: TextButton.styleFrom(
        textStyle: AppTextStyle.medium16,
        foregroundColor: context.isDarkMode ? Colors.white : Colors.black,
      ),
      child: const Text("Remove All", textAlign: TextAlign.right),
    );
  }
}
