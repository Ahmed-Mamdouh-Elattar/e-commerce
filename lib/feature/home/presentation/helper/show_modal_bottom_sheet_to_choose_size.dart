import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/entities/product_entity.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/feature/home/presentation/riverpod/product_properities_selection_provider/product_properities_selection_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

Future<dynamic> showModalBottomSheetToChooseSize(
  BuildContext context,
  ProductEntity product,
  List<String> sizes,
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
                Text("Size", style: AppTextStyle.bold24),
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
              itemCount: sizes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    ref
                        .read(productProperitiesSelectionProvider.notifier)
                        .updateSize(sizes[index]);
                    context.pop();
                  },
                  trailing: properitiesSelection.size == sizes[index]
                      ? const Icon(Icons.check, color: Colors.white)
                      : null,
                  tileColor: properitiesSelection.size == sizes[index]
                      ? AppColor.primary100
                      : context.isDarkMode
                      ? AppColor.bgDark2
                      : AppColor.bgLight2,
                  title: Text(
                    sizes[index],
                    style: AppTextStyle.medium16.copyWith(
                      color: properitiesSelection.size == sizes[index]
                          ? Colors.white
                          : null,
                    ),
                  ),
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
