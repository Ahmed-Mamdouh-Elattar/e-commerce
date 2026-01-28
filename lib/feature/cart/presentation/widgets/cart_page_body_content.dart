import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/widgets/custom_eleveted_button.dart';
import 'package:e_commerce/feature/cart/presentation/widgets/cart_bill.dart';
import 'package:e_commerce/feature/cart/presentation/widgets/sliver_list_cart_products_items_builder.dart';
import 'package:flutter/material.dart';

class CartPageBodyContent extends StatelessWidget {
  const CartPageBodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      textStyle: AppTextStyle.medium16,
                      foregroundColor: context.isDarkMode
                          ? Colors.white
                          : Colors.black,
                    ),
                    child: const Text("Remove All", textAlign: TextAlign.right),
                  ),
                ),
              ),

              const SliverListCartProductsItemsBuilder(),
              const SliverToBoxAdapter(child: SizedBox(height: 20)),
              const SliverToBoxAdapter(child: CartBill()),
              const SliverToBoxAdapter(child: SizedBox(height: 100)),
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
