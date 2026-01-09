import 'package:flutter/material.dart';

void showMessageDialog(
  BuildContext context, {
  required String message,
  required String title,
  bool isDismissible = false,
}) {
  showDialog(
    context: context,
    barrierDismissible: isDismissible,
    builder: (context) {
      return PopScope(
        canPop: !isDismissible,
        child: AlertDialog(title: Text(title), content: Text(message)),
      );
    },
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
