import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/widgets/custom_cached_network_image.dart';
import 'package:e_commerce/feature/cart/presentation/widgets/add_to_bag_button.dart';
import 'package:e_commerce/feature/home/presentation/riverpod/get_product_by_id_provider.dart/get_product_by_id_provider.dart';
import 'package:e_commerce/feature/home/presentation/widgets/product_page/choose_product_properites.dart';
import 'package:e_commerce/feature/home/presentation/widgets/product_page/product_details_and_reviews_section.dart';
import 'package:e_commerce/feature/home/presentation/widgets/product_page/product_title_and_price.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riverpod_annotation/experimental/scope.dart';

@Dependencies([getProductById])
class ProductPageBodyContent extends ConsumerWidget {
  const ProductPageBodyContent({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(getProductByIdProvider);
    return Stack(
      children: [
        Positioned.fill(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                SizedBox(
                  height: 248.h,
                  width: double.infinity,
                  child: CustomCachedNetworkImage(
                    imageUrl: product.value!.images!,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: kPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 24),
                      ProductTitleAndPrice(),
                      SizedBox(height: 33),
                      ChooseProductPropertiesSection(),
                      SizedBox(height: 26),
                      ProductDetailsAndReviewsSection(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const Positioned(
          bottom: 14,
          left: kPadding,
          right: kPadding,
          child: AddToBagButton(),
        ),
      ],
    );
  }
}
