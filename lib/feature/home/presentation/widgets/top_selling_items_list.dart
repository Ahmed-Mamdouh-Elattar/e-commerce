import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/feature/home/presentation/widgets/product_card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopSellingItemsList extends StatelessWidget {
  const TopSellingItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 282.h,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(width: 12);
        },
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: kPadding),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ProductCardItem();
        },
      ),
    );
  }
}
