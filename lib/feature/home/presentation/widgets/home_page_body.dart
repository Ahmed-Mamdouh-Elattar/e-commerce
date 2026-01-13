import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/feature/home/presentation/widgets/category_section.dart';
import 'package:e_commerce/feature/home/presentation/widgets/search_button.dart';
import 'package:e_commerce/feature/home/presentation/widgets/section.dart';
import 'package:e_commerce/feature/home/presentation/widgets/top_selling_items_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding),
            child: SearchButton(onTap: () {}),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding),
            child: Section(sectionTitle: "Categories", onPressedSeeAll: () {}),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding),
            child: SizedBox(height: 80.h, child: const CategorySection()),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding),
            child: Section(sectionTitle: "Top Selling", onPressedSeeAll: () {}),
          ),
          const SizedBox(height: 16),
          const TopSellingItemsList(),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding),
            child: Section(sectionTitle: "New In", onPressedSeeAll: () {}),
          ),
          const SizedBox(height: 16),
          const TopSellingItemsList(),
        ],
      ),
    );
  }
}
