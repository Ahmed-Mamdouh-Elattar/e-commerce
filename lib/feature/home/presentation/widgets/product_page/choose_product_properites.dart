import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/feature/home/presentation/helper/show_modal_bottom_sheet_to_choose_color.dart';
import 'package:e_commerce/feature/home/presentation/helper/show_modal_bottom_sheet_to_choose_size.dart';
import 'package:e_commerce/feature/home/presentation/riverpod/get_product_by_id_provider.dart/get_product_by_id_provider.dart';
import 'package:e_commerce/feature/home/presentation/riverpod/product_properities_selection_provider/product_properities_selection_provider.dart';
import 'package:e_commerce/feature/home/presentation/widgets/product_page/quantity_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/experimental/scope.dart';
import 'product_property_tile.dart';

@Dependencies([getProductById, ProductProperitiesSelection])
class ChooseProductPropertiesSection extends ConsumerWidget {
  const ChooseProductPropertiesSection({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(getProductByIdProvider);
    final properitiesSelection = ref.watch(productProperitiesSelectionProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductPropertyTile(
          title: "Size",
          valueChild: Text(
            properitiesSelection.size,
            style: AppTextStyle.bold16,
          ),
          onTap: () {
            showModalBottomSheetToChooseSize(
              context,
              product.value!,
              product.value!.sizes!,
              ref,
            );
          },
        ),
        const SizedBox(height: 16),
        ProductPropertyTile(
          title: "Color",
          valueChild: Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              color: properitiesSelection.color.color,
              shape: BoxShape.circle,
            ),
          ),
          onTap: () {
            showModalBottomSheetToChooseColor(
              context,
              product.value!,
              product.value!.colors!,
              ref,
            );
          },
        ),
        const SizedBox(height: 12),
        const QuantityTile(),
      ],
    );
  }
}
