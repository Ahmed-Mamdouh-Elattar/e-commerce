import 'package:e_commerce/core/config/app_color.dart';
import 'package:flutter/material.dart';

class AuthCallbackPage extends StatelessWidget {
  const AuthCallbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(color: AppColor.primary100),
      ),
    );
  }
}
