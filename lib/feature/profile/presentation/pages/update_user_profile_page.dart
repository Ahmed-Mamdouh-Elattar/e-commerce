import 'package:e_commerce/core/widgets/back_icon_button.dart';
import 'package:e_commerce/feature/profile/presentation/widgets/update_user_profile_page_body.dart';
import 'package:flutter/material.dart';

class UpdateUserProfilePage extends StatelessWidget {
  const UpdateUserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Profile'),
        leading: const BackIconButton(),
      ),
      body: const UpdateUserProfilePageBody(),
    );
  }
}
