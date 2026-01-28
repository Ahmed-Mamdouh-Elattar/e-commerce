import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/widgets/custom_icon_shape_button.dart';
import 'package:e_commerce/feature/cart/domain/entities/cart_entitity.dart';
import 'package:flutter/material.dart';

class CartProductItemQuantity extends StatelessWidget {
  const CartProductItemQuantity({required this.cartProduct, super.key});
  final CartEntity cartProduct;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconShapeButton(
          icon: Icons.remove,
          onPressed: () {},
          height: 24,
          width: 24,
        ),
        const SizedBox(width: 8),
        Text("${cartProduct.quantity}", style: AppTextStyle.bold12),
        const SizedBox(width: 8),
        CustomIconShapeButton(
          icon: Icons.add,
          onPressed: () {},
          height: 24,
          width: 24,
        ),
      ],
    );
  }
}
