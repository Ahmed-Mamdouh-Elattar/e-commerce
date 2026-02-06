import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:vector_graphics/vector_graphics.dart';

class BottomNavBarMainWrapper extends StatelessWidget {
  const BottomNavBarMainWrapper({required this.navigationShell, super.key});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final isDarkMode = context.isDarkMode;
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: SizedBox(
        height: 80.h,
        child: NavigationBar(
          indicatorColor: Colors.transparent,
          selectedIndex: navigationShell.currentIndex,
          onDestinationSelected: (index) {
            navigationShell.goBranch(
              index,
              initialLocation: index == navigationShell.currentIndex,
            );
          },

          elevation: 0,
          backgroundColor: context.isDarkMode
              ? AppColor.bgDark1
              : AppColor.bgLight1,

          destinations: [
            NavigationDestination(
              icon: VectorGraphic(
                loader: AssetBytesLoader(Assets.svg.home),
                colorFilter: navigationShell.currentIndex == 0
                    ? null
                    : ColorFilter.mode(
                        isDarkMode ? Colors.white : AppColor.black100,
                        BlendMode.srcIn,
                      ),
              ),
              label: '',
            ),
            NavigationDestination(
              icon: VectorGraphic(
                loader: AssetBytesLoader(Assets.svg.notificationbing),
                colorFilter: navigationShell.currentIndex == 1
                    ? null
                    : ColorFilter.mode(
                        isDarkMode ? Colors.white : AppColor.black100,
                        BlendMode.srcIn,
                      ),
              ),
              label: '',
            ),
            NavigationDestination(
              icon: VectorGraphic(
                loader: AssetBytesLoader(Assets.svg.receipt),
                colorFilter: navigationShell.currentIndex == 2
                    ? null
                    : ColorFilter.mode(
                        isDarkMode ? Colors.white : AppColor.black100,
                        BlendMode.srcIn,
                      ),
              ),
              label: '',
            ),
            NavigationDestination(
              icon: VectorGraphic(
                loader: AssetBytesLoader(Assets.svg.person),
                colorFilter: navigationShell.currentIndex == 3
                    ? null
                    : ColorFilter.mode(
                        isDarkMode ? Colors.white : AppColor.black100,
                        BlendMode.srcIn,
                      ),
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
