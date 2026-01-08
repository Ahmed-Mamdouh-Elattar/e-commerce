import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomElevetedButton extends StatelessWidget {
  const CustomElevetedButton({required this.label, this.onPressed, super.key});
  final String label;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 49),
        backgroundColor: AppColor.primary100,
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: AppTextStyle.medium16.copyWith(color: AppColor.bgLight1),
      ),
    );
  }
}
