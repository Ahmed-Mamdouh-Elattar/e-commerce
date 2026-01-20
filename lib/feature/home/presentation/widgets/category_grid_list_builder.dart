import 'package:e_commerce/feature/home/domain/entities/product_entity.dart';
import 'package:e_commerce/feature/home/presentation/widgets/product_card_item.dart';
import 'package:flutter/material.dart';

class CategoryGridListBuilder extends StatelessWidget {
  const CategoryGridListBuilder({required this.products, super.key});
  final List<ProductEntity> products;
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        childAspectRatio: 0.57,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductCardItem(product: products[index]);
      },
    );
  }
}
