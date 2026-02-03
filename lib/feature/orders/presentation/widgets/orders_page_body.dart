import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/feature/orders/presentation/widgets/orders_sliver_list_builder.dart';
import 'package:flutter/material.dart';

class OrdersPageBody extends StatelessWidget {
  const OrdersPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kPadding),
      child: CustomScrollView(slivers: [OrdersSliverListBuilder()]),
    );
  }
}
