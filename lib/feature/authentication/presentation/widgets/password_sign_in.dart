import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/error/failure_extension.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/helper/check_password_less_than_6.dart';
import 'package:e_commerce/core/helper/show_custom_dialogs.dart';
import 'package:e_commerce/core/widgets/custom_eleveted_button.dart';
import 'package:e_commerce/feature/authentication/data/models/user_model.dart';
import 'package:e_commerce/feature/authentication/presentation/provider/auth_provider/auth_provider.dart';
import 'package:e_commerce/feature/authentication/presentation/provider/email_provider/email_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PasswordSignIn extends HookConsumerWidget {
  const PasswordSignIn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final passwordController = useTextEditingController();

    ref.listen(authProvider, (previous, next) {
      next.when(
        data: (data) {
          if (data) {
            context.pop();
            showMessageDialog(
              context,
              message: "We Sent you an Email to reset your password.",
              image: Assets.images.email.path,
              isDismissible: false,
            );
          } else {
            context.pop();
            // then navigate to home page
          }
        },
        error: (error, stackTrace) {
          context.pop();
          showMessageDialog(
            context,
            message: error.errorMessage,
            image: Assets.images.error.path,
          );
        },
        loading: () {
          showLoadingDialog(context);
        },
      );
    });
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            controller: passwordController,
            validator: (value) => checkIsPasswordLessThan6(value!),
            decoration: const InputDecoration(hintText: "Password"),
          ),
          const SizedBox(height: 16),
          CustomElevetedButton(
            label: "Continue",
            onPressed: () {
              if (formKey.currentState!.validate()) {
                final email = ref.read(emailProvider);
                ref
                    .read(authProvider.notifier)
                    .signIn(
                      userModel: UserModel(
                        email: email,
                        password: passwordController.text,
                      ),
                    );
              }
            },
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Text("Forgot Password ?", style: AppTextStyle.medium12),
              TextButton(
                onPressed: () {
                  showForgotPasswordDialog(context, ref);
                },
                child: Text("Reset", style: AppTextStyle.bold12),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
