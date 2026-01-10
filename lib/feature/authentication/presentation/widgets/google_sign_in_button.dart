import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:flutter/material.dart';

class GoogleSignInButton4 extends StatelessWidget {
  const GoogleSignInButton4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.bgLight2,
        borderRadius: BorderRadius.circular(100),
      ),
      child: ListTile(
        leading: Padding(
          padding: const EdgeInsets.all(14),
          child: Image.asset(Assets.images.googleIcon.path),
        ),
        title: Text("Continue With Google", style: AppTextStyle.medium16),
      ),
    );
  }
}
