import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:flutter/material.dart';

class SeeAllTextButton extends StatelessWidget {
  const SeeAllTextButton({required this.onPressed, super.key});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: context.isDarkMode
            ? AppColor.bgLight1
            : AppColor.bgDark1,
        padding: EdgeInsets.zero,
      ),
      child: Text("See All", style: AppTextStyle.medium16),
    );
  }
}
