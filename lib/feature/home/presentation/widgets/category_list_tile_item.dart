import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/feature/home/domain/entities/category_entity.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryListTileItem extends StatelessWidget {
  const CategoryListTileItem({required this.category, super.key});

  final CategoryEntity category;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () async =>
          await context.push(PageName.categoryProducts, extra: category.id),
      tileColor: context.isDarkMode ? AppColor.bgDark2 : AppColor.bgLight2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      contentPadding: const EdgeInsets.all(12),
      leading: CachedNetworkImage(imageUrl: category.image),
      title: Text(category.name, style: AppTextStyle.medium16),
    );
  }
}
