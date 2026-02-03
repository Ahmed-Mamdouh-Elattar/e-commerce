import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/widgets/custom_eleveted_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderSuccessPageBody extends StatelessWidget {
  const OrderSuccessPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 150.h),
        Image.asset(Assets.images.orederSuccess.path),
        SizedBox(height: 68.h),
        Expanded(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: kPadding),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              color: AppColor.bgLight1,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text("Order Placed", style: AppTextStyle.bold32),
                    Text("Successfully", style: AppTextStyle.bold32),
                  ],
                ),
                Text(
                  'Thank you for your order!',
                  style: AppTextStyle.medium16.copyWith(
                    color: context.isDarkMode
                        ? AppColor.bgLight1.withValues(alpha: 0.5)
                        : AppColor.black100.withValues(alpha: 0.5),
                  ),
                ),
                CustomElevetedButton(
                  label: 'See Order Details',
                  onPressed: () {
                    // context.go(PageName.order);
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
