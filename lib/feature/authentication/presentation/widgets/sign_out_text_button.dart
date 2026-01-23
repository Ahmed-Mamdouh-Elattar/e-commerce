import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:flutter/material.dart';

class SignOutTextButton extends StatelessWidget {
  const SignOutTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        "Sign Out",
        style: AppTextStyle.bold16.copyWith(color: Colors.red),
      ),
    );
  }
}
