import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/widgets/custom_cached_network_image.dart';
import 'package:e_commerce/core/widgets/custom_eleveted_button.dart';
import 'package:e_commerce/feature/home/presentation/riverpod/get_product_by_id_provider.dart/get_product_by_id_provider.dart';
import 'package:e_commerce/feature/home/presentation/widgets/choose_product_properites.dart';
import 'package:e_commerce/feature/home/presentation/widgets/product_details_and_reviews_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ProductPageBody extends ConsumerWidget {
  const ProductPageBody({required this.productId, super.key});
  final String productId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(getProductByIdProvider(productId));
    return product.when(
      data: (data) {
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
      },
      error: (error, stackTrace) {
        return Center(child: Text(error.toString()));
      },
      loading: () {
        return Skeletonizer(
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
                        child: Image.asset(Assets.images.dummyProduct1.path),
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
                            const SizedBox(height: 26),
                            ProductDetailsAndReviewsSection(),
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
        );
      },
    );
  }
}
