import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/feature/cart/presentation/widgets/cart_page_body_content.dart';
import 'package:flutter/material.dart';

class CartPageBody extends StatelessWidget {
  const CartPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kPadding),
      child: CartPageBodyContent(),
    );
  }
}
