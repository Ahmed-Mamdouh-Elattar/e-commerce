import 'package:e_commerce/core/widgets/back_icon_button.dart';
import 'package:e_commerce/feature/home/presentation/widgets/product_page/product_page_body.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({required this.productId, super.key});
  final String productId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const BackIconButton()),
      body: ProductPageBody(productId: productId),
    );
  }
}
