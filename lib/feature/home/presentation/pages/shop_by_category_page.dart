import 'package:e_commerce/core/widgets/back_icon_button.dart';
import 'package:e_commerce/feature/home/presentation/widgets/shop_by_category_page/shop_by_category_page_body.dart';
import 'package:flutter/material.dart';

class ShopByCategoryPage extends StatelessWidget {
  const ShopByCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const BackIconButton()),
      body: const ShopByCategoryPageBody(),
    );
  }
}
