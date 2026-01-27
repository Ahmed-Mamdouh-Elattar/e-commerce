import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/feature/cart/domain/entities/cart_entitity.dart';
import 'package:e_commerce/feature/cart/presentation/providers/add_to_cart_provider/add_to_cart_provider.dart';
import 'package:e_commerce/feature/cart/presentation/providers/add_to_cart_provider/add_to_cart_states.dart';
import 'package:e_commerce/feature/home/presentation/riverpod/get_product_by_id_provider.dart/get_product_by_id_provider.dart';
import 'package:e_commerce/feature/home/presentation/riverpod/product_properities_selection_provider/product_properities_selection_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/experimental/scope.dart';

@Dependencies([getProductById, ProductProperitiesSelection])
class AddToBagButton extends ConsumerWidget {
  const AddToBagButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(getProductByIdProvider);
    final addToCart = ref.watch(addToCartProvider);

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: addToCart.maybeWhen(
          orElse: () => null,
          loaded: () => Colors.green,
        ),
      ),
      onPressed: () {
        final properitiesSelection = ref.read(
          productProperitiesSelectionProvider,
        );
        ref
            .read(addToCartProvider.notifier)
            .addToCart(
              CartEntity(
                productId: product.value!.id,
                size: properitiesSelection.size,
                color: properitiesSelection.color,
                quantity: properitiesSelection.quantity,
              ),
            );
      },
      child: addToCart.when(
        initial: () {
          return Row(
            children: [
              Text("\$${product.value!.price}", style: AppTextStyle.bold16),
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
