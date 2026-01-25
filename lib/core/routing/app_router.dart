import 'package:e_commerce/core/widgets/bottom_nav_bar_main_wrapper.dart';
import 'package:e_commerce/core/routing/router_notifier.dart';
import 'package:e_commerce/feature/authentication/presentation/routing/sign_in_route.dart';
import 'package:e_commerce/feature/home/presentation/routing/home_route.dart';
import 'package:e_commerce/feature/profile/presentation/routing/profile_route.dart';
import 'package:e_commerce/feature/search/presentation/routing/search_route.dart';
import 'package:e_commerce/feature/splash/presentation/routing/splash_route.dart';
import 'package:e_commerce/feature/wishlist/presentation/routing/wishlist_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  final routerNotifier = ref.watch(routerNotifierProvider);

  return GoRouter(
    refreshListenable: routerNotifier,
    redirect: (context, state) {
      final location = state.uri.toString();

      if (location.startsWith('e-commerce://')) {
        return location.replaceFirst('e-commerce://', '/');
      }

      return null;
    },
    routes: [splashRoute, signInRoute, statefulShellRoute],
  );
});
final statefulShellRoute = StatefulShellRoute.indexedStack(
  builder: (context, state, navigationShell) =>
      BottomNavBarMainWrapper(navigationShell: navigationShell),
  branches: [
    StatefulShellBranch(routes: [homeRoute, searchRoute]),
    StatefulShellBranch(
      routes: [
        GoRoute(
          path: '/Notification',
          builder: (context, state) => const SizedBox(),
        ),
      ],
    ),
    StatefulShellBranch(
      routes: [
        GoRoute(
          path: '/Receipt',
          builder: (context, state) => const SizedBox(),
        ),
      ],
    ),
    StatefulShellBranch(routes: [profileRoute, wishlistRoute]),
  ],
);
