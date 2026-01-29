import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/widgets/custom_cached_network_image.dart';
import 'package:e_commerce/feature/cart/domain/entities/cart_entitity.dart';
import 'package:e_commerce/feature/cart/presentation/widgets/cart_product_item_attribute.dart';
import 'package:e_commerce/feature/cart/presentation/widgets/cart_product_item_quantity.dart';
import 'package:e_commerce/feature/cart/presentation/widgets/delete_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartProductItem extends StatelessWidget {
  const CartProductItem({required this.cartProduct, super.key});

  final CartEntity cartProduct;

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
          SizedBox(
            width: 64.w,
            child: CustomCachedNetworkImage(
              imageUrl: cartProduct.product?.images ?? "",
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      cartProduct.product?.title ?? "",
                      style: AppTextStyle.medium14,
                    ),

                    Text(
                      "\$${cartProduct.product?.price}",
                      style: AppTextStyle.bold14,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    CartProductItemAttribute(
                      textKey: "Size",
                      textValue: "-${cartProduct.size}",
                    ),
                    const SizedBox(width: 16),
                    CartProductItemAttribute(
                      textKey: "Color",
                      textValue: "-${cartProduct.color?.name ?? ""}",
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CartProductItemQuantity(cartProduct: cartProduct),
                    const SizedBox(width: 16),
                    DeleteIconButton(cartProductId: cartProduct.id!),
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
