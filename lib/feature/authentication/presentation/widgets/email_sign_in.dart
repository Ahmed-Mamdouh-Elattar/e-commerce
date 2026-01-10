import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/helper/check_is_valid_email.dart';
import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/core/widgets/custom_eleveted_button.dart';
import 'package:e_commerce/feature/authentication/presentation/widgets/google_sign_in_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class EmailSignIn extends HookWidget {
  const EmailSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final emailController = useTextEditingController();
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            validator: (value) => checkIsValidEmail(value!),
            controller: emailController,
            decoration: const InputDecoration(hintText: "Email Address"),
          ),
          const SizedBox(height: 16),
          CustomElevetedButton(
            label: "Continue",
            onPressed: () {
              if (formKey.currentState!.validate()) {
                context.push(
                  PageName.passwordSignIn,
                  extra: emailController.text,
                );
              }
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
      ),
    );
  }
}
