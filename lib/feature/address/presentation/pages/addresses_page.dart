import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/widgets/back_icon_button.dart';
import 'package:e_commerce/feature/address/presentation/providers/get_user_addresses_provider/get_user_addresses_provider.dart';
import 'package:e_commerce/feature/address/presentation/widgets/addresses_page_body.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddressesPage extends StatelessWidget {
  const AddressesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Addresses'),
        leading: const BackIconButton(),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(16),
          child: Consumer(
            builder: (context, ref, child) {
              final addresses = ref.watch(getUserAddressesProvider);
              return addresses.isRefreshing
                  ? const LinearProgressIndicator(color: AppColor.primary100)
                  : const SizedBox();
            },
          ),
        ),
      ),
      body: const AddressesPageBody(),
    );
  }
}
