import 'package:e_commerce/feature/cart/presentation/providers/remove_cart_product_provider/remove_cart_product_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DeleteIconButton extends ConsumerWidget {
  const DeleteIconButton({required this.cartProductId, super.key});
  final String cartProductId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Delete Cart Product'),
            content: const Text(
              'Are you sure you want to delete this cart product?',
            ),
            actions: [
              TextButton(
                onPressed: () => context.pop(),
                child: const Text('Cancel'),
              ),
              TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.red),
                onPressed: () {
                  ref
                      .read(removeCartProductProvider.notifier)
                      .removeCartProduct(cartProductId);
                },
                child: const Text('Delete'),
              ),
            ],
          ),
        );
      },
      icon: const Icon(Icons.delete, color: Colors.red),
    );
  }
}
