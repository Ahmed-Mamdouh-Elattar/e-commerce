import 'package:e_commerce/feature/address/presentation/providers/delete_address__provider/delete_address_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DeleteAddressButton extends ConsumerWidget {
  const DeleteAddressButton({required this.addressId, super.key});
  final String addressId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: () async {
        await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Delete Address'),
              content: const Text(
                'Are you sure you want to delete this address?',
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    context.pop();
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {
                    ref
                        .read(deleteAddressProviderProvider.notifier)
                        .deleteAddress(addressId);
                  },
                  child: const Text('Delete'),
                ),
              ],
            );
          },
        );
      },
      icon: const Icon(Icons.delete, color: Colors.red),
    );
  }
}
