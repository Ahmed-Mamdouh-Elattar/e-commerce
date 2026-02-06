import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

class ProductPropertyTile extends StatelessWidget {
  final String title;
  final Widget valueChild;
  final VoidCallback onTap;

  const ProductPropertyTile({
    required this.title,
    required this.valueChild,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          valueChild,
          const SizedBox(width: 29),
          VectorGraphic(
            loader: AssetBytesLoader(Assets.svg.arrowDown),
            colorFilter: ColorFilter.mode(
              context.isDarkMode ? Colors.white : Colors.black,
              BlendMode.srcIn,
            ),
          ),
        ],
      ),
      tileColor: context.isDarkMode ? AppColor.bgDark2 : AppColor.bgLight2,
      title: Text(title, style: AppTextStyle.medium16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
    );
  }
}
