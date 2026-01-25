import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/helper/show_custom_dialogs.dart';
import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/feature/authentication/presentation/provider/sign_out_provider.dart/sign_out_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SignOutTextButton extends ConsumerWidget {
  const SignOutTextButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(signOutProvider, (previous, next) {
      next.when(
        data: (data) {
          context.go(PageName.emailSignIn);
        },
        error: (error, stackTrace) {
          context.pop();
          showMessageDialog(
            context,
            image: Assets.images.error.path,
            message: error.toString(),
          );
        },
        loading: () {
          showLoadingDialog(context);
        },
      );
    });
    return TextButton(
      onPressed: () {
        showSignOutConfirmationDialog(context, ref);
      },
      child: Text(
        "Sign Out",
        style: AppTextStyle.bold16.copyWith(color: Colors.red),
      ),
    );
  }

  Future<dynamic> showSignOutConfirmationDialog(
    BuildContext context,
    WidgetRef ref,
  ) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Center(child: Text("Sign Out")),
          content: const Text("Are you sure you want to sign out?"),
          actions: [
            TextButton(
              onPressed: () {
                context.pop();
              },
              child: Text("Cancel", style: AppTextStyle.medium16),
            ),
            TextButton(
              onPressed: () async {
                context.pop();
                ref.read(signOutProvider.notifier).signOut();
              },
              child: Text(
                "Sign Out",
                style: AppTextStyle.bold16.copyWith(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }
}
