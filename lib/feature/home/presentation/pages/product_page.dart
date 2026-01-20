import 'package:e_commerce/core/widgets/back_icon_button.dart';
import 'package:e_commerce/feature/home/presentation/widgets/product_page_body.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const BackIconButton()),
      body: const ProductPageBody(),
    );
  }
}
