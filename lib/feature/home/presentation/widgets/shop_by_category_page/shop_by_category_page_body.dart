import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/widgets/shop_by_category_content.dart';
import 'package:flutter/material.dart';

class ShopByCategoryPageBody extends StatelessWidget {
  const ShopByCategoryPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [SizedBox(height: 24), ShopByCategoryContent()],
      ),
    );
  }
}
