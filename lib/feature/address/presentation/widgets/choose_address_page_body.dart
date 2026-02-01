import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/widgets/custom_eleveted_button.dart';
import 'package:e_commerce/feature/address/presentation/providers/get_user_addresses_provider/get_user_addresses_provider.dart';
import 'package:e_commerce/feature/address/presentation/widgets/address_list_view_builder.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChooseAddressPageBody extends ConsumerWidget {
  const ChooseAddressPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addressAsync = ref.watch(
      getUserAddressesProvider.select((value) => value),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: Stack(
        children: [
          const CustomScrollView(
            slivers: [
              AddressListViewBuilder(),
              SliverToBoxAdapter(child: SizedBox(height: 100)),
            ],
          ),
          if (addressAsync is AsyncData && addressAsync.value!.isNotEmpty)
            Positioned(
              bottom: 30,
              right: 0,
              left: 0,
              child: CustomElevetedButton(label: "Continue", onPressed: () {}),
            ),
        ],
      ),
    );
  }
}
