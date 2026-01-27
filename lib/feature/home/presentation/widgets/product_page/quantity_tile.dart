import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/widgets/custom_icon_shape_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class QuantityTile extends HookWidget {
  const QuantityTile({required this.quantity, super.key});
  final ValueNotifier<int> quantity;

  @override
  Widget build(BuildContext context) {
    final count = useState(quantity.value);
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
            icon: Icons.remove,
            onPressed: () {
              if (count.value > 1) {
                count.value--;
                quantity.value = count.value;
              }
            },
          ),
          const SizedBox(width: 23),
          Text(count.value.toString(), style: AppTextStyle.medium16),
          const SizedBox(width: 23),
          CustomIconShapeButton(
            icon: Icons.add,
            onPressed: () {
              count.value++;
              quantity.value = count.value;
            },
          ),
        ],
      ),
    );
  }
}
