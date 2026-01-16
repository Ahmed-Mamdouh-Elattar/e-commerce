import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:flutter/material.dart';

class ProductDetailsAndReviewsSection extends StatelessWidget {
  const ProductDetailsAndReviewsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Built for life and made to last, this full-zip corduroy jacket is part of our Nike Life collection. The spacious fit gives you plenty of room to layer underneath, while the soft corduroy keeps it casual and timeless.",
          style: AppTextStyle.medium12.copyWith(color: Colors.grey),
        ),
        const SizedBox(height: 24),
        Text("Reviews", style: AppTextStyle.bold16),
        const SizedBox(height: 24),
        Text("4.5 Ratings", style: AppTextStyle.bold24),
        const SizedBox(height: 100),
      ],
    );
  }
}
