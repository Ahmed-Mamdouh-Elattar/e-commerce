import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/routing/page_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductCardItem extends StatelessWidget {
  const ProductCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(PageName.product);
      },
      child: Container(
        decoration: BoxDecoration(
          color: context.isDarkMode ? AppColor.bgDark2 : AppColor.bgLight2,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(child: Image.asset(Assets.images.dummyProduct1.path)),
            const SizedBox(height: 8),
            Text(
              "Men's Harrington Jacket",
              style: AppTextStyle.medium14.copyWith(color: AppColor.black100),
            ),
            const SizedBox(height: 8),
            Text("\$148.00", style: AppTextStyle.bold14),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
