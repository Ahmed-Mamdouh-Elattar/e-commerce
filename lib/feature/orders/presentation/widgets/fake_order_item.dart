import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics.dart';

class FakeOrderItem extends StatelessWidget {
  const FakeOrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.isDarkMode ? AppColor.bgDark2 : AppColor.bgLight2,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Row(
        children: [
          VectorGraphic(
            loader: AssetBytesLoader(Assets.svg.receipt),
            colorFilter: ColorFilter.mode(
              context.isDarkMode ? Colors.white : Colors.black,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Order 1", style: AppTextStyle.medium16),
              const SizedBox(height: 2),
              Text('Paid', style: AppTextStyle.regular12),
            ],
          ),
          const Spacer(),
          Text("\$1000", style: AppTextStyle.medium16),
          const SizedBox(width: 20),
          Transform.rotate(
            angle: -3.14 / 2,
            child: VectorGraphic(
              loader: AssetBytesLoader(Assets.svg.arrowDown),
              colorFilter: ColorFilter.mode(
                context.isDarkMode ? Colors.white : Colors.black,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
