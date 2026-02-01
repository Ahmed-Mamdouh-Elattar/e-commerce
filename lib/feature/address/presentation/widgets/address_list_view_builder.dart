import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/helper/show_custom_dialogs.dart';
import 'package:e_commerce/feature/address/presentation/providers/change_default_address_provider.dart/change_default_address_provider.dart';
import 'package:e_commerce/feature/address/presentation/providers/delete_address__provider/delete_address_provider.dart';
import 'package:e_commerce/feature/address/presentation/providers/get_user_addresses_provider/get_user_addresses_provider.dart';
import 'package:e_commerce/feature/address/presentation/widgets/address_card_item.dart';
import 'package:e_commerce/feature/address/presentation/widgets/empty_addresses.dart';
import 'package:e_commerce/feature/address/presentation/widgets/skeleton_addresses_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddressListViewBuilder extends HookConsumerWidget {
  const AddressListViewBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedId = useState<String?>(null);
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
    ref.listen(changeDefaultAddressProvider, (previous, next) {
      next.whenOrNull(
        error: (error, _) {
          selectedId.value = null;
          showMessageDialog(
            context,
            message: error.toString(),
            image: Assets.images.error.path,
          );
        },
      );
    });
    ref.listen(getUserAddressesProvider, (previous, next) {
      next.whenOrNull(data: (_) => selectedId.value = null);
    });
    final addressesAsync = ref.watch(getUserAddressesProvider);

    return addressesAsync.when(
      data: (data) {
        if (data.isEmpty) {
          return const EmptyAddresses();
        }

        return SliverList.separated(
          itemCount: data.length,
          separatorBuilder: (_, _) => const SizedBox(height: 10),
          itemBuilder: (context, index) {
            final address = data[index];

            final isCurrentlyDefault = selectedId.value == null
                ? address.isDefault
                : selectedId.value == address.id;

            return AddressCardItem(
              address: address,
              isDefault: isCurrentlyDefault!,
              onTap: () {
                selectedId.value = address.id;
                ref
                    .read(changeDefaultAddressProvider.notifier)
                    .changeDefaultAddress(address.id!);
              },
            );
          },
        );
      },
      loading: () => const SkeletonAddressesList(),
      error: (error, _) =>
          SliverFillRemaining(child: Center(child: Text(error.toString()))),
    );
  }
}
