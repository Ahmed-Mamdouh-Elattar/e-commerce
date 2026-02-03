import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyOrdersList extends StatelessWidget {
  const EmptyOrdersList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(Assets.images.noOrders.path, height: 100.h, width: 100.w),
          const SizedBox(height: 24),
          Text("No orders yet", style: AppTextStyle.medium24),
        ],
      ),
    );
  }
}
