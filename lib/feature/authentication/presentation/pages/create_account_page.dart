import 'package:e_commerce/core/widgets/back_icon_button.dart';
import 'package:e_commerce/feature/authentication/presentation/widgets/create_account_page_body.dart';
import 'package:flutter/material.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const BackIconButton()),
      body: const SafeArea(child: CreateAccountPageBody()),
    );
  }
}
