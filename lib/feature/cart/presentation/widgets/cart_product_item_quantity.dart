import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/helper/show_custom_dialogs.dart';
import 'package:e_commerce/core/widgets/custom_icon_shape_button.dart';
import 'package:e_commerce/feature/cart/domain/entities/cart_entitity.dart';
import 'package:e_commerce/feature/cart/presentation/providers/update_cart_product_quantity_provider/update_cart_product_quantity_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CartProductItemQuantity extends HookConsumerWidget {
  const CartProductItemQuantity({required this.cartProduct, super.key});
  final CartEntity cartProduct;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quantity = useState(cartProduct.quantity);
    final oldQuantity = useRef(cartProduct.quantity);
    final isUpdateCartProductQuantity = useRef<bool>(false);
    ref.listen(updateCartProductQuantityProvider, (previous, next) {
      next.when(
        loading: () {},
        data: (_) {
          isUpdateCartProductQuantity.value = false;
        },
        error: (error, stackTrace) async {
          if (isUpdateCartProductQuantity.value) {
            quantity.value = oldQuantity.value;
            await showMessageDialog(
              context,
              message: error.toString(),
              image: Assets.images.error.path,
            );
            isUpdateCartProductQuantity.value = false;
          }
        },
      );
    });

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconShapeButton(
          icon: Icons.remove,
          onPressed: () async {
            ref.invalidate(updateCartProductQuantityProvider);
            if (quantity.value! > 1) {
              isUpdateCartProductQuantity.value = true;
              oldQuantity.value = quantity.value;
              quantity.value = quantity.value! - 1;

              await ref
                  .read(updateCartProductQuantityProvider.notifier)
                  .updateCartProductQuantity(
                    cartProduct.copyWith(quantity: quantity.value),
                  );
            }
          },
          height: 24,
          width: 24,
        ),
        const SizedBox(width: 8),
        Text("${quantity.value}", style: AppTextStyle.bold12),
        const SizedBox(width: 8),
        CustomIconShapeButton(
          icon: Icons.add,
          onPressed: () async {
            ref.invalidate(updateCartProductQuantityProvider);
            isUpdateCartProductQuantity.value = true;
            oldQuantity.value = quantity.value;
            quantity.value = quantity.value! + 1;

            await ref
                .read(updateCartProductQuantityProvider.notifier)
                .updateCartProductQuantity(
                  cartProduct.copyWith(quantity: quantity.value),
                );
          },
          height: 24,
          width: 24,
        ),
      ],
    );
  }
}
