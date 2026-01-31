import 'package:e_commerce/feature/address/presentation/widgets/address_card_item.dart';
import 'package:flutter/material.dart';

class AddressListViewBuilder extends StatelessWidget {
  const AddressListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => const AddressCardItem(),
      itemCount: 10,
      separatorBuilder: (context, index) => const SizedBox(height: 10),
    );
  }
}
