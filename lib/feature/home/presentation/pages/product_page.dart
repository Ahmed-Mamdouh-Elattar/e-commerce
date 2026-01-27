import 'package:e_commerce/core/widgets/back_icon_button.dart';
import 'package:e_commerce/feature/home/presentation/riverpod/get_product_by_id_provider.dart/get_product_by_id_provider.dart';
import 'package:e_commerce/feature/home/presentation/riverpod/product_properities_selection_provider/product_properities_selection_provider.dart';
import 'package:e_commerce/feature/home/presentation/widgets/product_page/product_page_body.dart';
import 'package:e_commerce/feature/wishlist/presentation/widgets/favorite_icon_button_with_circle_shape.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/experimental/scope.dart';

@Dependencies([productId, getProductById, ProductProperitiesSelection])
class ProductPage extends StatelessWidget {
  const ProductPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackIconButton(),
        actions: const [
          FavoriteIconButtonWithCircleShape(),
          SizedBox(width: 10),
        ],
      ),
      body: const ProductPageBody(),
    );
  }
}
