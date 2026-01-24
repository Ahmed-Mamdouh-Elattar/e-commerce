import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:flutter/material.dart';

class EmptyWishListPage extends StatelessWidget {
  const EmptyWishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.favorite_outline,
            size: 100,
            color: AppColor.primary100,
          ),
          const SizedBox(height: 16),
          Text("No products in wishlist", style: AppTextStyle.medium24),
        ],
      ),
    );
  }
}
