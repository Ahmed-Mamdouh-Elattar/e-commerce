import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/core/widgets/custom_eleveted_button.dart';
import 'package:e_commerce/feature/authentication/presentation/widgets/google_sign_in_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EmailSignIn extends StatelessWidget {
  const EmailSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(hintText: "Email Address"),
        ),
        const SizedBox(height: 16),
        CustomElevetedButton(
          label: "Continue",
          onPressed: () {
            context.push(PageName.passwordSignIn);
          },
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Text("Don't have an Account ?", style: AppTextStyle.medium12),
            TextButton(
              onPressed: () {
                context.push(PageName.createAccount);
              },
              child: Text("Create One", style: AppTextStyle.bold12),
            ),
          ],
        ),
        const SizedBox(height: 70),
        const GoogleSignInButton4(),
      ],
    );
  }
}
