import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/widgets/back_icon_button.dart';
import 'package:e_commerce/feature/home/presentation/widgets/category_list_view.dart';
import 'package:flutter/material.dart';

class ShopByCategoryPageBody extends StatelessWidget {
  const ShopByCategoryPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(leading: const BackIconButton()),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: kPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                Text("Shop by Categories", style: AppTextStyle.bold24),
                const SizedBox(height: 14),
                const CategoryListView(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
