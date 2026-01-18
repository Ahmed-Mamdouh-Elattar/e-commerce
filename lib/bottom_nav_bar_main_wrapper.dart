import 'package:e_commerce/core/config/app_color.dart';
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
          backgroundColor: Colors.white,

          destinations: [
            NavigationDestination(
              icon: VectorGraphic(
                loader: AssetBytesLoader(Assets.svg.home),
                colorFilter: navigationShell.currentIndex == 0
                    ? null
                    : const ColorFilter.mode(
                        AppColor.black100,
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
                    : const ColorFilter.mode(
                        AppColor.black100,
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
                    : const ColorFilter.mode(
                        AppColor.black100,
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
                    : const ColorFilter.mode(
                        AppColor.black100,
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
