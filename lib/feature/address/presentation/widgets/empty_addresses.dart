import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:flutter/material.dart';

class EmptyAddresses extends StatelessWidget {
  const EmptyAddresses({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.location_on, size: 80, color: AppColor.primary100),
          const SizedBox(height: 20),
          Text('No addresses found', style: AppTextStyle.medium20),
        ],
      ),
    );
  }
}
