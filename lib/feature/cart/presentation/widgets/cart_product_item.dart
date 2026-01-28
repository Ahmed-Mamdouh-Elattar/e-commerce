import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/widgets/custom_icon_shape_button.dart';
import 'package:e_commerce/feature/cart/presentation/widgets/cart_product_item_attribute.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartProductItem extends StatelessWidget {
  const CartProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: context.isDarkMode ? AppColor.bgDark2 : AppColor.bgLight2,
        borderRadius: BorderRadius.circular(8),
      ),
      height: 120,
      width: double.infinity,
      child: Row(
        children: [
          Image.asset(Assets.images.dummyProduct1.path, width: 64.w),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Men's Harrington Jacket",
                      style: AppTextStyle.medium14,
                    ),

                    Text("\$148", style: AppTextStyle.bold14),
                  ],
                ),
                const SizedBox(height: 8),
                const Row(
                  children: [
                    CartProductItemAttribute(textKey: "Size", textValue: "-S"),
                    SizedBox(width: 16),
                    CartProductItemAttribute(
                      textKey: "Color",
                      textValue: "-Black",
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomIconShapeButton(
                      icon: Icons.remove,
                      onPressed: () {},
                      height: 24,
                      width: 24,
                    ),
                    const SizedBox(width: 8),
                    Text("1", style: AppTextStyle.bold12),
                    const SizedBox(width: 8),
                    CustomIconShapeButton(
                      icon: Icons.add,
                      onPressed: () {},
                      height: 24,
                      width: 24,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
