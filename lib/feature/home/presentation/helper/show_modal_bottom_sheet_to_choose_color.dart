import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/entities/product_entity.dart';
import 'package:e_commerce/feature/home/presentation/riverpod/product_properities_selection_provider/product_properities_selection_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

Future<dynamic> showModalBottomSheetToChooseColor(
  BuildContext context,
  ProductEntity product,
  List<ColorEntity> colors,
  WidgetRef ref,
) {
  final properitiesSelection = ref.read(productProperitiesSelectionProvider);
  return showModalBottomSheet(
    backgroundColor: context.isDarkMode ? AppColor.bgDark1 : AppColor.bgLight1,
    context: context,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: kPadding),
        child: Column(
          children: [
            const SizedBox(height: 14),
            Row(
              children: [
                const Spacer(),
                Text("Color", style: AppTextStyle.bold24),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
            const SizedBox(height: 27),
            ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(height: 16);
              },
              shrinkWrap: true,
              itemCount: colors.length,
              itemBuilder: (context, index) {
                final itemColor = colors[index];
                final isSelected =
                    properitiesSelection.color.name == itemColor.name;
                return ListTile(
                  onTap: () {
                    ref
                        .read(productProperitiesSelectionProvider.notifier)
                        .updateColor(itemColor);
                    context.pop();
                  },
                  title: Text(
                    itemColor.name,
                    style: AppTextStyle.medium16.copyWith(
                      color: isSelected ? Colors.white : null,
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          color: itemColor.color,
                          shape: BoxShape.circle,
                          border:
                              properitiesSelection.color.color ==
                                  itemColor.color
                              ? Border.all(color: Colors.white, width: 2)
                              : null,
                        ),
                      ),

                      const SizedBox(width: 25),
                      if (isSelected)
                        const Icon(Icons.check, color: Colors.white, size: 24)
                      else
                        const SizedBox(height: 24, width: 24),
                    ],
                  ),
                  tileColor: isSelected
                      ? AppColor.primary100
                      : context.isDarkMode
                      ? AppColor.bgDark2
                      : AppColor.bgLight2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      );
    },
  );
}
