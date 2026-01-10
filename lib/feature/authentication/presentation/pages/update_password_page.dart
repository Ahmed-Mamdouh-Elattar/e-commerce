import 'package:e_commerce/feature/authentication/presentation/widgets/update_password_page_body.dart';
import 'package:flutter/material.dart';

class UpdatePasswordPage extends StatelessWidget {
  const UpdatePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: UpdatePasswordPageBody()));
  }
}
