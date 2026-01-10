import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/helper/check_password_less_than_6.dart';
import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/widgets/custom_eleveted_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UpdatePasswordPageBody extends HookConsumerWidget {
  const UpdatePasswordPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final passwordController = useTextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: kHeightInAuthPages.h),
              Text("Update Password", style: AppTextStyle.bold32),
              const SizedBox(height: 32),
              TextFormField(
                validator: (value) => checkIsPasswordLessThan6(value),
                controller: passwordController,
                decoration: const InputDecoration(
                  hintText: "Enter New Password",
                ),
              ),
              const SizedBox(height: 16),
              CustomElevetedButton(label: "Update", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
