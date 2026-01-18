import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/core/widgets/custom_cached_network_image.dart';
import 'package:e_commerce/feature/home/domain/entities/category_entity.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CategoryType extends StatelessWidget {
  const CategoryType({required this.category, super.key});
  final CategoryEntity category;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          context.push(PageName.categoryProducts);
        },
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: CustomCachedNetworkImage(imageUrl: category.image),
              ),
            ),
            const SizedBox(height: 5),
            FittedBox(child: Text(category.name, style: AppTextStyle.medium12)),
          ],
        ),
      ),
    );
  }
}
