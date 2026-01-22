import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/widgets/custom_cached_network_image.dart';
import 'package:e_commerce/core/widgets/custom_eleveted_button.dart';
import 'package:e_commerce/core/entities/product_entity.dart';
import 'package:e_commerce/feature/home/presentation/widgets/product_page/choose_product_properites.dart';
import 'package:e_commerce/feature/home/presentation/widgets/product_page/product_details_and_reviews_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductPageBodyContent extends StatelessWidget {
  const ProductPageBodyContent({required this.data, super.key});
  final ProductEntity data;
  @override
  Widget build(BuildContext context) {
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
                  child: CustomCachedNetworkImage(imageUrl: data.images!),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 24),
                      Text(data.title ?? "", style: AppTextStyle.bold16),
                      const SizedBox(height: 15),
                      Text(
                        "\$${data.price}",
                        style: AppTextStyle.bold16.copyWith(
                          color: AppColor.primary100,
                        ),
                      ),
                      const SizedBox(height: 33),
                      ChooseProductPropertiesSection(product: data),
                      const SizedBox(height: 26),
                      ProductDetailsAndReviewsSection(product: data),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 14,
          left: kPadding,
          right: kPadding,
          child: CustomElevetedButton(
            label: "\$${data.price}  Add to Bag",
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class FakeProductPageBodyContent extends StatelessWidget {
  const FakeProductPageBodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  Container(
                    height: 248.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: context.isDarkMode
                          ? AppColor.bgDark2
                          : AppColor.bgLight2,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 24),
                        Text(
                          "Men's Harrington Jacket",
                          style: AppTextStyle.bold16,
                        ),
                        const SizedBox(height: 15),
                        Text(
                          "\$148",
                          style: AppTextStyle.bold16.copyWith(
                            color: AppColor.primary100,
                          ),
                        ),
                        const SizedBox(height: 33),
                        const SizedBox(height: 26),
                        const ProductDetailsAndReviewsSection(),
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
            child: CustomElevetedButton(label: "\$147  Add to Bag"),
          ),
        ],
      ),
    );
  }
}
