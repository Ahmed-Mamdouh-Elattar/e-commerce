import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

class FavoriteIconButtonWithCircleShape extends StatelessWidget {
  const FavoriteIconButtonWithCircleShape({this.isFavorite = false, super.key});
  final bool isFavorite;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: context.isDarkMode ? AppColor.bgDark2 : AppColor.bgLight2,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: VectorGraphic(
            height: 16,
            width: 16,
            loader: AssetBytesLoader(
              isFavorite ? Assets.svg.heart : Assets.svg.balckFavorite,
            ),
          ),
        ),
      ),
      onPressed: () {},
    );
  }
}
