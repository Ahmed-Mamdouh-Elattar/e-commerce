import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/feature/orders/domain/entities/order_entity.dart';
import 'package:e_commerce/feature/orders/presentation/helper/order_details_params.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vector_graphics/vector_graphics.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({required this.order, required this.orderNumber, super.key});
  final OrderEntity order;
  final int orderNumber;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(
          PageName.orderDetails,
          extra: OrderDetailsParams(
            order: order,
            addressId: order.addressId!,
            orderNumber: orderNumber,
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: context.isDarkMode ? AppColor.bgDark2 : AppColor.bgLight2,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: Row(
          children: [
            VectorGraphic(
              loader: AssetBytesLoader(Assets.svg.receipt),
              colorFilter: ColorFilter.mode(
                context.isDarkMode ? Colors.white : Colors.black,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Order $orderNumber",
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.medium16,
                ),
                const SizedBox(height: 2),
                Text(order.status ?? "Unknown", style: AppTextStyle.regular12),
              ],
            ),
            const Spacer(),
            Text("\$${order.totalPrice}", style: AppTextStyle.medium16),
            const SizedBox(width: 20),
            Transform.rotate(
              angle: -3.14 / 2,
              child: VectorGraphic(
                loader: AssetBytesLoader(Assets.svg.arrowDown),
                colorFilter: ColorFilter.mode(
                  context.isDarkMode ? Colors.white : Colors.black,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
