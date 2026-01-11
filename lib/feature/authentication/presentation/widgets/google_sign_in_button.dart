import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/error/failure_extension.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/helper/show_custom_dialogs.dart';
import 'package:e_commerce/feature/authentication/presentation/provider/sign_in_with_google_provider/sign_in_with_google_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GoogleSignInButton4 extends ConsumerWidget {
  const GoogleSignInButton4({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(signInWithGoogleProvider, (previous, next) {
      next.when(
        data: (data) {
          context.pop();
          //then navigate to home
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
    return Container(
      decoration: BoxDecoration(
        color: AppColor.bgLight2,
        borderRadius: BorderRadius.circular(100),
      ),
      child: ListTile(
        onTap: () =>
            ref.read(signInWithGoogleProvider.notifier).signInWithGoogle(),
        leading: Padding(
          padding: const EdgeInsets.all(14),
          child: Image.asset(Assets.images.googleIcon.path),
        ),
        title: Text("Continue With Google", style: AppTextStyle.medium16),
      ),
    );
  }
}
