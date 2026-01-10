import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/helper/check_is_valid_email.dart';
import 'package:e_commerce/core/helper/check_password_less_than_6.dart';
import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/helper/show_custom_dialogs.dart';
import 'package:e_commerce/core/widgets/custom_eleveted_button.dart';
import 'package:e_commerce/feature/authentication/data/models/user_model.dart';
import 'package:e_commerce/feature/authentication/presentation/provider/auth_provider/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CreateAccountPageBody extends HookConsumerWidget {
  const CreateAccountPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final firstNameController = useTextEditingController();
    final lastNameController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    ref.listen(authProvider, (previous, next) {
      next.whenOrNull(
        data: (data) {
          if (data != null) {
            context.pop();
            showMessageDialog(
              context,
              message:
                  "We have sent you a verification email Please check your email",
              title: "Success",
              isDismissible: true,
            );
          }
        },
        loading: () {
          showLoadingDialog(context);
        },
        error: (error, stackTrace) {
          context.pop();
          showMessageDialog(context, message: error.toString(), title: "Error");
        },
      );
    });
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text("Create Account", style: AppTextStyle.bold32),
              const SizedBox(height: 32),
              TextFormField(
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your firstname";
                  }
                  return null;
                },
                controller: firstNameController,
                decoration: const InputDecoration(hintText: "Firstname"),
              ),
              const SizedBox(height: 16),
              TextFormField(
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your lastname";
                  }
                  return null;
                },
                controller: lastNameController,
                decoration: const InputDecoration(hintText: "Lastname"),
              ),
              const SizedBox(height: 16),
              TextFormField(
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email address';
                  }
                  return checkIsValidEmail(value);
                },
                controller: emailController,
                decoration: const InputDecoration(hintText: "Email Address"),
              ),
              const SizedBox(height: 16),
              TextFormField(
                textInputAction: TextInputAction.send,
                onFieldSubmitted: (value) {
                  validateAndSignUp(
                    formKey,
                    ref,
                    emailController,
                    passwordController,
                    firstNameController,
                    lastNameController,
                  );
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return checkIsPasswordLessThan6(value);
                },
                controller: passwordController,
                decoration: const InputDecoration(hintText: "Password"),
              ),
              const SizedBox(height: 40),
              CustomElevetedButton(
                label: "Continue",
                onPressed: () {
                  validateAndSignUp(
                    formKey,
                    ref,
                    emailController,
                    passwordController,
                    firstNameController,
                    lastNameController,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void validateAndSignUp(
    GlobalKey<FormState> formKey,
    WidgetRef ref,
    TextEditingController emailController,
    TextEditingController passwordController,
    TextEditingController firstNameController,
    TextEditingController lastNameController,
  ) {
    if (formKey.currentState!.validate()) {
      ref
          .read(authProvider.notifier)
          .signUp(
            userModel: UserModel(
              email: emailController.text,
              password: passwordController.text,
              firstName: firstNameController.text,
              lastName: lastNameController.text,
            ),
          );
    }
  }
}
