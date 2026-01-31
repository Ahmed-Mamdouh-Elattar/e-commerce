import 'package:e_commerce/feature/address/presentation/providers/get_user_addresses_provider/get_user_addresses_provider.dart';
import 'package:e_commerce/feature/address/presentation/widgets/address_card_item.dart';
import 'package:e_commerce/feature/address/presentation/widgets/fake_address_card_item.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AddressListViewBuilder extends ConsumerWidget {
  const AddressListViewBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addresses = ref.watch(getUserAddressesProvider);
    return addresses.when(
      data: (data) {
        return SliverList.separated(
          itemBuilder: (context, index) =>
              AddressCardItem(address: data[index]),
          itemCount: data.length,
          separatorBuilder: (context, index) => const SizedBox(height: 10),
        );
      },
      error: (error, stackTrace) {
        return SliverFillRemaining(
          hasScrollBody: false,
          child: Center(child: Text(error.toString())),
        );
      },
      loading: () {
        return Skeletonizer.sliver(
          child: SliverList.separated(
            itemBuilder: (context, index) => const FakeAddressCardItem(),
            itemCount: 5,
            separatorBuilder: (context, index) => const SizedBox(height: 10),
          ),
        );
      },
    );
  }
}
