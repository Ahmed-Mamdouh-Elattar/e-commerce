import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/feature/payment/presentation/widgets/order_success_page_body.dart';
import 'package:flutter/material.dart';

class OrderSuccessPage extends StatelessWidget {
  const OrderSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.primary100,
      body: SafeArea(child: OrderSuccessPageBody()),
    );
  }
}
