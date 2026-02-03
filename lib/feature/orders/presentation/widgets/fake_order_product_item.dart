import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/widgets/custom_cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FakeOrderProductItem extends StatelessWidget {
  const FakeOrderProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: context.isDarkMode ? AppColor.bgDark2 : AppColor.bgLight2,
        borderRadius: BorderRadius.circular(8),
      ),
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 64.w,
            child: const CustomCachedNetworkImage(imageUrl: ""),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Men's T-Shirt", style: AppTextStyle.medium16),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text("Color: Red ", style: AppTextStyle.regular14),
                    const SizedBox(width: 16),
                    Text("Size: L", style: AppTextStyle.regular14),
                    const Spacer(),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text("Quantity: 2", style: AppTextStyle.regular14),
                    SizedBox(width: 16.w),
                    Text("Total: \$100", style: AppTextStyle.regular14),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
