import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/feature/orders/presentation/helper/order_details_params.dart';
import 'package:e_commerce/feature/orders/presentation/widgets/sliver_order_products_items_list.dart';
import 'package:flutter/material.dart';

class OrderDetailsPageBody extends StatelessWidget {
  const OrderDetailsPageBody({required this.params, super.key});
  final OrderDetailsParams params;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Text("Products", style: AppTextStyle.medium16),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverOrderProductsItemsList(orderId: params.order.id!),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          const SliverToBoxAdapter(child: Divider()),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(
            child: Row(
              children: [
                Text("Total Price", style: AppTextStyle.medium16),
                const Spacer(),
                Text(
                  "\$${params.order.totalPrice}",
                  style: AppTextStyle.medium16,
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(
            child: Row(
              children: [
                Text("Status", style: AppTextStyle.medium16),
                const Spacer(),
                Text(
                  params.order.status ?? "Unknown",
                  style: AppTextStyle.regular14,
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverToBoxAdapter(
            child: Text("Shipping Address", style: AppTextStyle.medium16),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 8)),
          SliverToBoxAdapter(
            child: Text("123 Main St", style: AppTextStyle.regular14),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 50)),
        ],
      ),
    );
  }
}
