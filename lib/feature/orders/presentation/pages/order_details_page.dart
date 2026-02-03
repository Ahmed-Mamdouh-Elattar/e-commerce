import 'package:e_commerce/core/widgets/back_icon_button.dart';
import 'package:e_commerce/feature/orders/presentation/helper/order_details_params.dart';
import 'package:e_commerce/feature/orders/presentation/widgets/order_details_page_body.dart';
import 'package:flutter/material.dart';

class OrderDetailsPage extends StatelessWidget {
  const OrderDetailsPage({required this.params, super.key});
  final OrderDetailsParams params;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order ${params.orderNumber}'),
        leading: const BackIconButton(),
      ),
      body: OrderDetailsPageBody(params: params),
    );
  }
}
