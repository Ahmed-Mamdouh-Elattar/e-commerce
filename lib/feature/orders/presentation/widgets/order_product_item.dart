import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/widgets/custom_cached_network_image.dart';
import 'package:e_commerce/feature/orders/domain/entities/order_item_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderProductItem extends StatelessWidget {
  const OrderProductItem({required this.orderItem, super.key});
  final OrderItemEntity orderItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: context.isDarkMode ? AppColor.bgDark2 : AppColor.bgLight2,
        borderRadius: BorderRadius.circular(8),
      ),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 64.w,
            child: CustomCachedNetworkImage(imageUrl: orderItem.productImage!),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(orderItem.productName!, style: AppTextStyle.medium16),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      "Color: ${orderItem.color?.split(':')[0]}",
                      style: AppTextStyle.regular14,
                    ),
                    const SizedBox(width: 16),
                    Text(
                      "Size: ${orderItem.size}",
                      style: AppTextStyle.regular14,
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      "Quantity: ${orderItem.quantity}",
                      style: AppTextStyle.regular14,
                    ),
                    SizedBox(width: 16.w),
                    Text(
                      "Total: \$${orderItem.productPrice! * orderItem.quantity!}",
                      style: AppTextStyle.regular14,
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
