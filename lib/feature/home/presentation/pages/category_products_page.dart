import 'package:e_commerce/core/widgets/back_icon_button.dart';
import 'package:e_commerce/feature/home/domain/entities/category_entity.dart';
import 'package:e_commerce/feature/home/presentation/widgets/category_products_page_body.dart';
import 'package:flutter/material.dart';

class CategoryProductsPage extends StatelessWidget {
  const CategoryProductsPage({required this.categoryEntity, super.key});
  final CategoryEntity categoryEntity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const BackIconButton()),
      body: CategoryProductsPageBody(categoryEntity: categoryEntity),
    );
  }
}
