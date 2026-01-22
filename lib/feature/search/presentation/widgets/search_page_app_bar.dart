import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/widgets/back_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

class SearchPageAppBar extends StatelessWidget {
  const SearchPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const BackIconButton(),
        const SizedBox(width: 9),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search",
              prefixIcon: FittedBox(
                fit: BoxFit.scaleDown,
                child: VectorGraphic(
                  height: 16,
                  width: 16,
                  loader: AssetBytesLoader(Assets.svg.search),
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(100),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
