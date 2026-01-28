import 'package:e_commerce/core/config/app_color.dart';
import 'package:flutter/material.dart';

class CustomIconShapeButton extends StatelessWidget {
  const CustomIconShapeButton({
    required this.height,
    required this.width,
    required this.icon,
    required this.onPressed,
    super.key,
  });
  final IconData icon;
  final VoidCallback onPressed;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: AppColor.primary100,
        ),
        child: Icon(icon, color: Colors.white),
      ),
    );
  }
}
