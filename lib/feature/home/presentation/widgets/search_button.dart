import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      tileColor: context.isDarkMode ? AppColor.bgDark2 : AppColor.bgLight2,
      leading: VectorGraphic(
        loader: AssetBytesLoader(Assets.svg.search),
        height: 16,
        width: 16,
      ),
      title: const Text("Search"),
    );
  }
}
