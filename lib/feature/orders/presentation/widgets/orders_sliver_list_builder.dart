import 'package:e_commerce/feature/orders/presentation/providers/get_orders_provider.dart';
import 'package:e_commerce/feature/orders/presentation/widgets/empty_orders_list.dart';
import 'package:e_commerce/feature/orders/presentation/widgets/fake_order_item.dart';
import 'package:e_commerce/feature/orders/presentation/widgets/order_item.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class OrdersSliverListBuilder extends ConsumerWidget {
  const OrdersSliverListBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final orders = ref.watch(getOrdersProvider);
    return orders.when(
      data: (data) {
        if (data.isEmpty) {
          return const EmptyOrdersList();
        }
        return SliverList.separated(
          itemCount: data.length,
          itemBuilder: (context, index) =>
              OrderItem(order: data[index], orderNumber: index + 1),
          separatorBuilder: (context, index) => const SizedBox(height: 12),
        );
      },
      error: (error, stackTrace) =>
          SliverToBoxAdapter(child: Center(child: Text(error.toString()))),
      loading: () => Skeletonizer.sliver(
        child: SliverList.separated(
          itemCount: 10,
          itemBuilder: (context, index) => const FakeOrderItem(),
          separatorBuilder: (context, index) => const SizedBox(height: 12),
        ),
      ),
    );
  }
}
