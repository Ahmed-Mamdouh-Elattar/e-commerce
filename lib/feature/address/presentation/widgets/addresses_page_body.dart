import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/helper/show_custom_dialogs.dart';
import 'package:e_commerce/feature/address/presentation/providers/delete_address__provider/delete_address_provider.dart';
import 'package:e_commerce/feature/address/presentation/widgets/address_list_view_builder.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddressesPageBody extends ConsumerWidget {
  const AddressesPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(deleteAddressProviderProvider, (previous, next) {
      next.when(
        data: (data) {
          context.pop();
        },
        error: (error, stackTrace) {
          context.pop();
          showMessageDialog(
            context,
            message: error.toString(),
            image: Assets.images.error.path,
          );
        },
        loading: () {
          context.pop();
          showLoadingDialog(context);
        },
      );
    });
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: kPadding),
      child: CustomScrollView(slivers: [AddressListViewBuilder()]),
    );
  }
}
