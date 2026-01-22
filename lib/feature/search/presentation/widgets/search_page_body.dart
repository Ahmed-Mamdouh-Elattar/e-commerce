import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/widgets/shop_by_category_content.dart';
import 'package:e_commerce/feature/search/presentation/widgets/search_page_app_bar.dart';
import 'package:flutter/material.dart';

class SearchPageBody extends StatelessWidget {
  const SearchPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchPageAppBar(),
          SizedBox(height: 34),
          ShopByCategoryContent(),
        ],
      ),
    );
  }
}
