import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/feature/home/presentation/widgets/home_page/categories_section.dart';
import 'package:e_commerce/feature/home/presentation/widgets/home_page/new_in_items_list.dart';
import 'package:e_commerce/feature/home/presentation/widgets/home_page/search_button.dart';
import 'package:e_commerce/feature/home/presentation/widgets/home_page/section.dart';
import 'package:e_commerce/feature/home/presentation/widgets/home_page/top_selling_items_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

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
            child: Section(
              sectionTitle: "Categories",
              onPressedSeeAll: () async {
                await context.push(PageName.shopByCategory);
              },
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding),
            child: SizedBox(height: 80.h, child: const CategoriesSection()),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding),
            child: Section(
              sectionTitle: "Top Selling",
              isSeeAllButtonVisible: false,
            ),
          ),
          const SizedBox(height: 16),
          const TopSellingItemsList(),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding),
            child: Section(
              sectionTitle: "New In",
              isSeeAllButtonVisible: false,
            ),
          ),
          const SizedBox(height: 16),
          const NewInItemsList(),
        ],
      ),
    );
  }
}
