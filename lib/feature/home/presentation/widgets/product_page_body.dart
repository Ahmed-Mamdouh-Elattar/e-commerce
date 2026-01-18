import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/widgets/back_icon_button.dart';
import 'package:e_commerce/core/widgets/custom_eleveted_button.dart';
import 'package:e_commerce/feature/home/presentation/widgets/choose_product_properites.dart';
import 'package:e_commerce/feature/home/presentation/widgets/product_details_and_reviews_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductPageBody extends StatelessWidget {
  const ProductPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(leading: const BackIconButton()),
        Expanded(
          child: Stack(
            children: [
              Positioned.fill(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 24),
                      SizedBox(
                        height: 248.h,
                        child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return const SizedBox(width: 10);
                          },
                          padding: const EdgeInsets.only(left: kPadding),
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Image.asset(
                              Assets.images.dummyProduct1.path,
                            );
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: kPadding,
                        ),
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
                            const ChooseProductPropertiesSection(),
                            const SizedBox(height: 26),
                            const ProductDetailsAndReviewsSection(),
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
                  label: "\$147  Add to Bag",
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
