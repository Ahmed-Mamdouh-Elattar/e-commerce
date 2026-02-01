import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/feature/address/presentation/widgets/addresses_page_app_bar.dart';
import 'package:e_commerce/feature/address/presentation/widgets/addresses_page_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddressesPage extends StatelessWidget {
  const AddressesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AddressesPageAppBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.primary100,
        onPressed: () async {
          await context.push(PageName.takeUserAddress);
        },
        child: const Icon(Icons.add),
      ),
      body: const AddressesPageBody(),
    );
  }
}
