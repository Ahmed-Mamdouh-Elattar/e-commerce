import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

class CartBillTextKeyAndValue extends StatelessWidget {
  const CartBillTextKeyAndValue({
    required this.textKey,
    required this.textValue,
    super.key,
    this.isTotal = false,
  });
  final String textKey;
  final String textValue;
  final bool isTotal;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textKey,
          style: AppTextStyle.medium16.copyWith(
            color: context.isDarkMode
                ? Colors.white.withValues(alpha: 0.5)
                : Colors.black.withValues(alpha: 0.5),
          ),
        ),
        const Spacer(),
        Text(
          textValue,
          style: isTotal ? AppTextStyle.bold16 : AppTextStyle.medium16,
        ),
      ],
    );
  }
}
