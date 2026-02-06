import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/feature/profile/presentation/widgets/user_home_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vector_graphics/vector_graphics.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actionsPadding: const EdgeInsets.symmetric(horizontal: kPadding),
      leadingWidth: 40 + kPadding,
      leading: const Row(
        children: [
          SizedBox(width: kPadding),
          UserHomeImage(),
        ],
      ),
      actions: [
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () async {
            await context.push(PageName.cart);
          },
          icon: CircleAvatar(
            radius: 20,
            backgroundColor: AppColor.primary100,
            child: VectorGraphic(
              loader: AssetBytesLoader(Assets.svg.bag),
              height: 20,
              width: 20,
            ),
          ),
        ),
      ],
      title: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: context.isDarkMode ? AppColor.bgDark2 : AppColor.bgLight2,
          borderRadius: BorderRadius.circular(100),
        ),
        width: 72,
        height: 40,
        child: const Text("Home"),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
