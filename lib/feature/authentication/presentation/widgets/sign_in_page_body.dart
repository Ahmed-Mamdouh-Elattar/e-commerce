import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/helper/constansts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInPageBody extends StatelessWidget {
  const SignInPageBody({required this.child, super.key});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(height: kHeightInAuthPages.h),
            Text("Sign in", style: AppTextStyle.bold32),
            const SizedBox(height: 32),
            child,
          ],
        ),
      ),
    );
  }
}
