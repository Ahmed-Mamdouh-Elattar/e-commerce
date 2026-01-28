import 'package:e_commerce/feature/cart/presentation/widgets/cart_product_item.dart';
import 'package:flutter/material.dart';

class SliverListCartProductsItemsBuilder extends StatelessWidget {
  const SliverListCartProductsItemsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: 6,
      separatorBuilder: (context, index) {
        return const SizedBox(height: 8);
      },
      itemBuilder: (context, index) {
        return const CartProductItem();
      },
    );
  }
}
