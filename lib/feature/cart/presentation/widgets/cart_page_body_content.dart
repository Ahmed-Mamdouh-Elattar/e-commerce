import 'package:e_commerce/core/widgets/custom_eleveted_button.dart';
import 'package:e_commerce/feature/cart/presentation/widgets/cart_bill.dart';
import 'package:e_commerce/feature/cart/presentation/widgets/remove_all_cart_products_button.dart';
import 'package:e_commerce/feature/cart/presentation/widgets/sliver_list_cart_products_items_builder.dart';
import 'package:flutter/material.dart';

class CartPageBodyContent extends StatelessWidget {
  const CartPageBodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned.fill(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: RemoveAllCartProductsButton(),
                ),
              ),

              SliverListCartProductsItemsBuilder(),
              SliverToBoxAdapter(child: SizedBox(height: 20)),
              SliverToBoxAdapter(child: CartBill()),
              SliverToBoxAdapter(child: SizedBox(height: 100)),
            ],
          ),
        ),
        Positioned(
          bottom: 14,
          right: 0,
          left: 0,
          child: CustomElevetedButton(label: "Checkout", onPressed: () {}),
        ),
      ],
    );
  }
}
