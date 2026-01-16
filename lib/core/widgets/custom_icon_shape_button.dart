import 'package:e_commerce/core/config/app_color.dart';
import 'package:flutter/material.dart';

class CustomIconShapeButton extends StatelessWidget {
  const CustomIconShapeButton({
    required this.icon,
    required this.onPressed,
    super.key,
  });
  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.primary100,
        ),
        child: Icon(icon, color: Colors.white),
      ),
    );
  }
}
