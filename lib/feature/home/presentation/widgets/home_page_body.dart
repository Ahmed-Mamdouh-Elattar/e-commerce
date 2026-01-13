import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/feature/home/presentation/widgets/category_section.dart';
import 'package:e_commerce/feature/home/presentation/widgets/search_button.dart';
import 'package:e_commerce/feature/home/presentation/widgets/section.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
        children: [
          const SizedBox(height: 24),

          SearchButton(onTap: () {}),
          const SizedBox(height: 24),
          Section(sectionTitle: "Categories", onPressedSeeAll: () {}),
          const SizedBox(height: 16),
          const SizedBox(height: 80, child: CategorySection()),
        ],
      ),
    );
  }
}
