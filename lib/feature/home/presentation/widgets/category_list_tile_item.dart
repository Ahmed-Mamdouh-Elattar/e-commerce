import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/feature/home/presentation/helper/category_ui_model.dart';
import 'package:flutter/material.dart';

class CategoryListTileItem extends StatelessWidget {
  const CategoryListTileItem({required this.category, super.key});

  final CategoryUiModel category;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: context.isDarkMode ? AppColor.bgDark2 : AppColor.bgLight2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      contentPadding: const EdgeInsets.all(12),
      leading: Image.asset(category.image),
      title: Text(category.title, style: AppTextStyle.medium16),
    );
  }
}
