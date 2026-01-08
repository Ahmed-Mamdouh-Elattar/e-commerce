import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/core/widgets/custom_eleveted_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PasswordSignIn extends StatelessWidget {
  const PasswordSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(decoration: const InputDecoration(hintText: "Password")),
        const SizedBox(height: 16),
        CustomElevetedButton(label: "Continue", onPressed: () {}),
        const SizedBox(height: 16),
        Row(
          children: [
            Text("Forgot Password ?", style: AppTextStyle.medium12),
            TextButton(
              onPressed: () {
                context.push(PageName.forgotPassword);
              },
              child: Text("Reset", style: AppTextStyle.bold12),
            ),
          ],
        ),
      ],
    );
  }
}
