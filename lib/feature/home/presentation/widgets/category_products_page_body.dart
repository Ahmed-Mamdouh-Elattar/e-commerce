import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/widgets/back_icon_button.dart';
import 'package:e_commerce/feature/home/presentation/widgets/category_grid_list_builder.dart';
import 'package:flutter/material.dart';

class CategoryProductsPageBody extends StatelessWidget {
  const CategoryProductsPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(leading: const BackIconButton()),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding),
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(child: SizedBox(height: 16)),
                SliverToBoxAdapter(
                  child: Text("Hoodies (240)", style: AppTextStyle.bold16),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 23)),
                const CategoryGridListBuilder(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
