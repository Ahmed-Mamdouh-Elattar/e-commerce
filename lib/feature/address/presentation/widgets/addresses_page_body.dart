import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/feature/address/presentation/widgets/address_list_view_builder.dart';
import 'package:flutter/material.dart';

class AddressesPageBody extends StatelessWidget {
  const AddressesPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(children: [SizedBox(height: 16), AddressListViewBuilder()]),
    );
  }
}
