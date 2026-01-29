import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/feature/cart/presentation/providers/get_cart_total_price_provider.dart/get_cart_total_price_provider.dart';
import 'package:e_commerce/feature/cart/presentation/widgets/cart_bill_text_key_and_value.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartBill extends ConsumerWidget {
  const CartBill({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartTotalPrice = ref.watch(
      getCartTotalPriceProvider.select((value) => value.value),
    );
    return Column(
      children: [
        CartBillTextKeyAndValue(
          textKey: "Subtotal",
          textValue: "\$$cartTotalPrice",
        ),
        const SizedBox(height: 12),
        const CartBillTextKeyAndValue(
          textKey: "Shipping Cost",
          textValue: "\$0",
        ),
        const SizedBox(height: 12),
        const CartBillTextKeyAndValue(textKey: "Tax", textValue: "\$0"),
        Divider(
          height: 16,
          color: context.isDarkMode
              ? Colors.white.withValues(alpha: 0.2)
              : Colors.black.withValues(alpha: 0.2),
        ),
        CartBillTextKeyAndValue(
          textKey: "Total",
          textValue: "\$$cartTotalPrice",
          isTotal: true,
        ),
      ],
    );
  }
}
