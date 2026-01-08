import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/widgets/custom_eleveted_button.dart';
import 'package:flutter/material.dart';

class CreateAccountPageBody extends StatelessWidget {
  const CreateAccountPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text("Create Account", style: AppTextStyle.bold32),
            const SizedBox(height: 32),
            TextFormField(
              decoration: const InputDecoration(hintText: "Firstname"),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(hintText: "Lastname"),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(hintText: "Email Address"),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(hintText: "Password"),
            ),
            const SizedBox(height: 40),
            CustomElevetedButton(label: "Continue", onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
