import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/feature/address/presentation/widgets/address_list_view_builder.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddressesPageBody extends ConsumerWidget {
  const AddressesPageBody({this.isPaymentOperation = false, super.key});
  final bool isPaymentOperation;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kPadding),
      child: CustomScrollView(slivers: [AddressListViewBuilder()]),
    );
  }
}
