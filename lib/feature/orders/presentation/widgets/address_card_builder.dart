import 'package:e_commerce/feature/orders/presentation/providers/get_order_address_provider/get_order_address_provider.dart';
import 'package:e_commerce/feature/orders/presentation/widgets/address_card.dart';
import 'package:e_commerce/feature/orders/presentation/widgets/fake_address_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AddressCardBuilder extends ConsumerWidget {
  const AddressCardBuilder({required this.addressId, super.key});
  final String addressId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final address = ref.watch(getOrderAddressProvider(addressId));
    return address.when(
      data: (data) {
        return AddressCard(address: data);
      },
      error: (error, stackTrace) {
        return Center(child: Text(error.toString()));
      },
      loading: () {
        return const Skeletonizer(child: FakeAddressCard());
      },
    );
  }
}
