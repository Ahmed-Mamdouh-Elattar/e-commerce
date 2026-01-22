import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/entities/product_entity.dart';
import 'package:e_commerce/feature/home/presentation/helper/show_modal_bottom_sheet_to_choose_color.dart';
import 'package:e_commerce/feature/home/presentation/helper/show_modal_bottom_sheet_to_choose_size.dart';
import 'package:e_commerce/feature/home/presentation/widgets/product_page/quantity_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'product_property_tile.dart';

class ChooseProductPropertiesSection extends HookWidget {
  const ChooseProductPropertiesSection({required this.product, super.key});
  final ProductEntity product;
  @override
  Widget build(BuildContext context) {
    final size = useState<String>(product.sizes![0]);
    final color = useState<ColorEntity>(product.colors![0]);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductPropertyTile(
          title: "Size",
          valueChild: Text(size.value, style: AppTextStyle.bold16),
          onTap: () {
            showModalBottomSheetToChooseSize(context, size, product.sizes!);
          },
        ),
        const SizedBox(height: 16),
        ProductPropertyTile(
          title: "Color",
          valueChild: Container(
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              color: color.value.color,
              shape: BoxShape.circle,
            ),
          ),
          onTap: () {
            showModalBottomSheetToChooseColor(context, color, product.colors!);
          },
        ),
        const SizedBox(height: 12),
        const QuantityTile(),
      ],
    );
  }
}
