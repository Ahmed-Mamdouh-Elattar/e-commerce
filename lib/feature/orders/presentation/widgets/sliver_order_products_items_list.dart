import 'package:e_commerce/feature/orders/presentation/providers/get_order_details_by_id_provider.dart/get_order_products.dart';
import 'package:e_commerce/feature/orders/presentation/widgets/fake_order_product_item.dart';
import 'package:e_commerce/feature/orders/presentation/widgets/order_product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SliverOrderProductsItemsList extends ConsumerWidget {
  const SliverOrderProductsItemsList({required this.orderId, super.key});
  final String orderId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orderProducts = ref.watch(getOrderProductsProvider(orderId));
    return orderProducts.when(
      data: (data) {
        return SliverList.separated(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return OrderProductItem(orderItem: data[index]);
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 12);
          },
        );
      },
      error: (error, stackTrace) {
        return SliverToBoxAdapter(child: Center(child: Text(error.toString())));
      },
      loading: () {
        return Skeletonizer.sliver(
          child: SliverList.separated(
            itemCount: 4,
            itemBuilder: (context, index) {
              return const FakeOrderProductItem();
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 12);
            },
          ),
        );
      },
    );
  }
}
