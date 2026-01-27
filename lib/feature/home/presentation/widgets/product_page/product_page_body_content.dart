import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/widgets/custom_cached_network_image.dart';
import 'package:e_commerce/core/entities/product_entity.dart';
import 'package:e_commerce/feature/cart/presentation/widgets/add_to_bag_button.dart';
import 'package:e_commerce/feature/home/presentation/widgets/product_page/choose_product_properites.dart';
import 'package:e_commerce/feature/home/presentation/widgets/product_page/product_details_and_reviews_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductPageBodyContent extends HookWidget {
  const ProductPageBodyContent({required this.data, super.key});
  final ProductEntity data;
  @override
  Widget build(BuildContext context) {
    final size = useValueNotifier(data.sizes![0]);
    final color = useValueNotifier<ColorEntity>(data.colors![0]);
    final quantity = useValueNotifier(1);
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
                      ChooseProductPropertiesSection(
                        product: data,
                        colorNotifier: color,
                        quantity: quantity,
                        sizeNotifier: size,
                      ),
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
          child: AddToBagButton(
            data: data,
            color: color,
            quantity: quantity,
            size: size,
          ),
        ),
      ],
    );
  }
}
