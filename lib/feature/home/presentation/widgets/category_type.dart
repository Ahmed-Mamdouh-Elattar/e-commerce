import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/feature/home/presentation/helper/category_ui_model.dart';
import 'package:flutter/material.dart';

class CategoryType extends StatelessWidget {
  const CategoryType({required this.category, super.key});
  final CategoryUiModel category;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage(category.image)),
              ),
            ),
          ),
          const SizedBox(height: 5),
          FittedBox(child: Text(category.title, style: AppTextStyle.medium12)),
        ],
      ),
    );
  }
}
