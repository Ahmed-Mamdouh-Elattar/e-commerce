import 'package:e_commerce/core/widgets/back_icon_button.dart';
import 'package:e_commerce/feature/home/presentation/widgets/category_products_page_body.dart';
import 'package:flutter/material.dart';

class CategoryProductsPage extends StatelessWidget {
  const CategoryProductsPage({required this.categoryId, super.key});
  final String categoryId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const BackIconButton()),
      body: CategoryProductsPageBody(categoryId: categoryId),
    );
  }
}
