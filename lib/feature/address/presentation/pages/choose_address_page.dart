import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/core/widgets/back_icon_button.dart';
import 'package:e_commerce/core/widgets/custom_icon_shape_button.dart';
import 'package:e_commerce/feature/address/presentation/widgets/choose_address_page_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChooseAddressPage extends StatelessWidget {
  const ChooseAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Address'),
        leading: const BackIconButton(),
        actions: [
          CustomIconShapeButton(
            height: 24,
            width: 24,
            icon: Icons.add,
            onPressed: () async {
              await context.push(PageName.takeUserAddress);
            },
          ),
        ],
      ),
      body: const ChooseAddressPageBody(),
    );
  }
}
