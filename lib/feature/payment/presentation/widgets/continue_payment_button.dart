import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/helper/show_custom_dialogs.dart';
import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/core/widgets/custom_eleveted_button.dart';
import 'package:e_commerce/feature/cart/presentation/providers/get_cart_total_price_provider.dart/get_cart_total_price_provider.dart';
import 'package:e_commerce/feature/payment/presentation/providers/make_payment_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ContinuePaymentButton extends ConsumerWidget {
  const ContinuePaymentButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final amount = ref.watch(
      getCartTotalPriceProvider.select((value) => value.value),
    );
    ref.listen(makePaymentProvider, (previous, next) {
      next.when(
        loading: () {
          showLoadingDialog(context);
        },
        data: (data) {
          context.pop();
          context.go(PageName.orderSuccess);
        },
        error: (error, stackTrace) {
          context.pop();
          showMessageDialog(
            context,
            message: error.toString(),
            image: Assets.images.error.path,
          );
        },
      );
    });
    return CustomElevetedButton(
      label: "Continue",
      onPressed: () {
        ref.read(makePaymentProvider.notifier).makePayment(amount: amount!);
      },
    );
  }
}
