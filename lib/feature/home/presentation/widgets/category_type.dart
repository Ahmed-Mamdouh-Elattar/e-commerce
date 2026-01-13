import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:flutter/material.dart';

class CategoryType extends StatelessWidget {
  const CategoryType({required this.image, required this.title, super.key});
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(image)),
              ),
            ),
          ),
          const SizedBox(height: 5),
          FittedBox(child: Text(title, style: AppTextStyle.medium12)),
        ],
      ),
    );
  }
}
