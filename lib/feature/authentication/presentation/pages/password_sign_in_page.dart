import 'package:e_commerce/feature/authentication/presentation/widgets/password_sign_in.dart';
import 'package:e_commerce/feature/authentication/presentation/widgets/sign_in_page_body.dart';
import 'package:flutter/material.dart';

class PasswordSignInPage extends StatelessWidget {
  const PasswordSignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SignInPageBody(child: PasswordSignIn())),
    );
  }
}
