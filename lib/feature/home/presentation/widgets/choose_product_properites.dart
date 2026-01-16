import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/feature/home/presentation/helper/product_color_ui.dart';
import 'package:e_commerce/feature/home/presentation/helper/show_modal_bottom_sheet_to_choose_color.dart';
import 'package:e_commerce/feature/home/presentation/helper/show_modal_bottom_sheet_to_choose_size.dart';
import 'package:e_commerce/feature/home/presentation/widgets/quantity_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'product_property_tile.dart';

class ChooseProductPropertiesSection extends HookWidget {
  const ChooseProductPropertiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = useState<String>("S");
    final color = useState<ProductColorUi>(
      const ProductColorUi("Orange", Colors.orange),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductPropertyTile(
          title: "Size",
          valueChild: Text(size.value, style: AppTextStyle.bold16),
          onTap: () {
            showModalBottomSheetToChooseSize(context, size);
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
            showModalBottomSheetToChooseColor(context, color);
          },
        ),
        const SizedBox(height: 12),
        const QuantityTile(),
      ],
    );
  }
}
