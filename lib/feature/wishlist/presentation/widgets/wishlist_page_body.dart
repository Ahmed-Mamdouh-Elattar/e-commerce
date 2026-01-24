import 'package:e_commerce/core/widgets/back_icon_button.dart';
import 'package:e_commerce/core/widgets/products_grid_list.dart';
import 'package:flutter/material.dart';

class WishlistPageBody extends StatelessWidget {
  const WishlistPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          leading: BackIconButton(),
          title: Text("My Favorites (12)"),
        ),
        ProductsGridList(products: []),
      ],
    );
  }
}
