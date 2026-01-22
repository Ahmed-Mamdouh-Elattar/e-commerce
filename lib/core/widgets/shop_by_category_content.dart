import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/feature/home/presentation/widgets/shop_by_category_page/category_list_view.dart';
import 'package:flutter/material.dart';

class ShopByCategoryContent extends StatelessWidget {
  const ShopByCategoryContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Shop by Categories", style: AppTextStyle.bold24),
        const SizedBox(height: 14),
        const CategoryListView(),
      ],
    );
  }
}
