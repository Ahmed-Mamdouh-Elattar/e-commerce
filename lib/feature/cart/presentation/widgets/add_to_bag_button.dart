import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/entities/product_entity.dart';
import 'package:e_commerce/feature/cart/domain/entities/cart_entitity.dart';
import 'package:e_commerce/feature/cart/presentation/providers/add_to_cart_provider/add_to_cart_provider.dart';
import 'package:e_commerce/feature/cart/presentation/providers/add_to_cart_provider/add_to_cart_states.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddToBagButton extends ConsumerWidget {
  const AddToBagButton({
    required this.color,
    required this.quantity,
    required this.size,
    required this.data,
    super.key,
  });

  final ProductEntity data;
  final ValueNotifier<String> size;
  final ValueNotifier<ColorEntity> color;
  final ValueNotifier<int> quantity;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addToCart = ref.watch(addToCartProvider);

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: addToCart.maybeWhen(
          orElse: () => null,
          loaded: () => Colors.green,
        ),
      ),
      onPressed: () {
        ref
            .read(addToCartProvider.notifier)
            .addToCart(
              CartEntity(
                productId: data.id,
                size: size.value,
                color: color.value,
                quantity: quantity.value,
              ),
            );
      },
      child: addToCart.when(
        initial: () {
          return Row(
            children: [
              Text("\$${data.price}", style: AppTextStyle.bold16),
              const Spacer(),
              Text("Add to Bag", style: AppTextStyle.medium16),
              const Icon(Icons.shopping_bag),
            ],
          );
        },
        loading: () {
          return const CircularProgressIndicator();
        },
        loaded: () {
          return const Icon(Icons.check_box, size: 24);
        },
        failure: (message) {
          return Text(message);
        },
      ),
    );
  }
}
