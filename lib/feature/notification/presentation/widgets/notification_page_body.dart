import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/helper/constansts.dart';
import 'package:flutter/material.dart';
import 'package:vector_graphics/vector_graphics_compat.dart';

class NotificationPageBody extends StatelessWidget {
  const NotificationPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      separatorBuilder: (context, index) {
        return const SizedBox(height: 10);
      },
      itemBuilder: (context, index) {
        return Container(
          height: 80,
          decoration: BoxDecoration(
            color: context.isDarkMode ? AppColor.bgDark2 : AppColor.bgLight2,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: ListTile(
              leading: VectorGraphic(
                colorFilter: ColorFilter.mode(
                  context.isDarkMode ? Colors.white : Colors.black,
                  BlendMode.srcIn,
                ),
                loader: AssetBytesLoader(Assets.svg.notificationbing),
              ),
              title: Text('Notification $index'),
              subtitle: Text('Notification $index'),
            ),
          ),
        );
      },
    );
  }
}
