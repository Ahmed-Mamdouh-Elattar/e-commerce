import 'package:e_commerce/core/widgets/back_icon_button.dart';
import 'package:e_commerce/feature/address/presentation/widgets/take_user_address_page_body.dart';
import 'package:flutter/material.dart';

class TakeUserAddressPage extends StatelessWidget {
  const TakeUserAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Addresses"),
        leading: const BackIconButton(),
      ),
      body: const TakeUserAddressPageBody(),
    );
  }
}
