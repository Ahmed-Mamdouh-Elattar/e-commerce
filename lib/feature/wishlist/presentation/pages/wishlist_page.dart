import 'package:e_commerce/feature/wishlist/presentation/widgets/wishlist_page_body.dart';
import 'package:flutter/material.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: WishlistPageBody()));
  }
}
