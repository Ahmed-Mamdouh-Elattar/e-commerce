import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/widgets/custom_icon_shape_button.dart';
import 'package:e_commerce/feature/home/presentation/riverpod/product_properities_selection_provider/product_properities_selection_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class QuantityTile extends ConsumerWidget {
  const QuantityTile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(productProperitiesSelectionProvider);
    return ListTile(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      tileColor: context.isDarkMode ? AppColor.bgDark2 : AppColor.bgLight2,
      title: Text("Quantity", style: AppTextStyle.medium16),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomIconShapeButton(
            height: 40,
            width: 40,
            icon: Icons.remove,
            onPressed: () {
              if (count.quantity > 1) {
                ref
                    .read(productProperitiesSelectionProvider.notifier)
                    .updateQuantity(count.quantity - 1);
              }
            },
          ),
          const SizedBox(width: 23),
          Text(count.quantity.toString(), style: AppTextStyle.medium16),
          const SizedBox(width: 23),
          CustomIconShapeButton(
            height: 40,
            width: 40,
            icon: Icons.add,
            onPressed: () {
              ref
                  .read(productProperitiesSelectionProvider.notifier)
                  .updateQuantity(count.quantity + 1);
            },
          ),
        ],
      ),
    );
  }
}
