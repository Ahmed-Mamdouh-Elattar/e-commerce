import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/feature/authentication/presentation/widgets/sign_out_text_button.dart';
import 'package:e_commerce/feature/profile/presentation/widgets/profile_tiles_items_properities.dart';
import 'package:e_commerce/feature/profile/presentation/widgets/user_profile_information.dart';
import 'package:flutter/material.dart';

class ProfilePageBody extends StatelessWidget {
  const ProfilePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
        children: [
          SizedBox(height: 32),
          UserProfileInformation(),
          SizedBox(height: 26),
          ProfileTileItemsProperities(),
          SizedBox(height: 35),
          SignOutTextButton(),
        ],
      ),
    );
  }
}
