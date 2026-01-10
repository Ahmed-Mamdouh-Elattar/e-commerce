import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/widgets/custom_eleveted_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdatePasswordPageBody extends StatelessWidget {
  const UpdatePasswordPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: kHeightInAuthPages.h),
            Text("Update Password", style: AppTextStyle.bold32),
            const SizedBox(height: 32),
            TextFormField(
              decoration: const InputDecoration(hintText: "Enter New Password"),
            ),
            const SizedBox(height: 16),
            CustomElevetedButton(label: "Update", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
