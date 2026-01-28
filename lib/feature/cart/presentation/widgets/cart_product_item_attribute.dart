import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

class CartProductItemAttribute extends StatelessWidget {
  const CartProductItemAttribute({
    required this.textKey,
    required this.textValue,
    super.key,
  });
  final String textKey;
  final String textValue;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          textKey,
          style: AppTextStyle.medium14.copyWith(
            color: context.isDarkMode
                ? Colors.white.withValues(alpha: 0.5)
                : Colors.black.withValues(alpha: 0.5),
          ),
        ),
        Text(textValue, style: AppTextStyle.bold14),
      ],
    );
  }
}
