import 'package:e_commerce/feature/address/presentation/widgets/fake_address_card_item.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SkeletonAddressesList extends StatelessWidget {
  const SkeletonAddressesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer.sliver(
      child: SliverList.separated(
        itemBuilder: (context, index) => const FakeAddressCardItem(),
        itemCount: 5,
        separatorBuilder: (context, index) => const SizedBox(height: 10),
      ),
    );
  }
}
