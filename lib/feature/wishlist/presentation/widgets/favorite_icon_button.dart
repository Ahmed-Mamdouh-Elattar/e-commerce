import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

class FavoriteIconButton extends StatelessWidget {
  const FavoriteIconButton({this.isFavorite = false, super.key});
  final bool isFavorite;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () {},
      icon: VectorGraphic(
        height: 24.h,
        width: 24.w,
        loader: AssetBytesLoader(
          isFavorite ? Assets.svg.heart : Assets.svg.balckFavorite,
        ),
      ),
    );
  }
}
