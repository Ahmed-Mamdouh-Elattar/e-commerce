import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics.dart';

class ProfileTileItem extends StatelessWidget {
  const ProfileTileItem({required this.title, required this.onTap, super.key});
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      title: Text(title, style: AppTextStyle.medium16),
      trailing: Transform.rotate(
        angle: -1.5708,
        child: VectorGraphic(loader: AssetBytesLoader(Assets.svg.arrowDown)),
      ),
    );
  }
}
