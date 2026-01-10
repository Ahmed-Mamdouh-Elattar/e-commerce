import 'package:e_commerce/feature/authentication/presentation/provider/auth_provider/auth_provider.dart';
import 'package:e_commerce/feature/authentication/presentation/provider/email_provider/email_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<dynamic> showMessageDialog(
  BuildContext context, {
  required String message,
  required String image,
  bool isDismissible = true,
}) {
  return showDialog(
    barrierDismissible: isDismissible,
    context: context,
    builder: (context) => PopScope(
      canPop: isDismissible,
      child: AlertDialog(
        icon: SizedBox(height: 100, width: 100, child: Image.asset(image)),
        content: Text(message, textAlign: TextAlign.center),
      ),
    ),
  );
}

void showLoadingDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return const PopScope(
        canPop: false,
        child: Center(child: CircularProgressIndicator()),
      );
    },
  );
}

Future<dynamic> showForgotPasswordDialog(BuildContext context, WidgetRef ref) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text("Forgot Password"),

        content: const Text("Are you sure you want to reset your password?"),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: const Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              context.pop();
              final email = ref.read(emailProvider);
              ref.read(authProvider.notifier).resetPassword(email: email);
            },
            child: const Text("Reset"),
          ),
        ],
      );
    },
  );
}
