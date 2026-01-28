import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/feature/cart/presentation/widgets/cart_bill_text_key_and_value.dart';
import 'package:flutter/material.dart';

class CartBill extends StatelessWidget {
  const CartBill({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CartBillTextKeyAndValue(textKey: "Subtotal", textValue: "\$148"),
        const SizedBox(height: 12),
        const CartBillTextKeyAndValue(
          textKey: "Shipping Cost",
          textValue: "\$8",
        ),
        const SizedBox(height: 12),
        const CartBillTextKeyAndValue(textKey: "Tax", textValue: "\$0"),
        Divider(
          height: 16,
          color: context.isDarkMode
              ? Colors.white.withValues(alpha: 0.2)
              : Colors.black.withValues(alpha: 0.2),
        ),
        const CartBillTextKeyAndValue(
          textKey: "Total",
          textValue: "\$156",
          isTotal: true,
        ),
      ],
    );
  }
}
