import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/feature/home/presentation/pages/home_page.dart';
import 'package:e_commerce/feature/home/presentation/pages/shop_by_category_page.dart';
import 'package:go_router/go_router.dart';

final homeRoute = GoRoute(
  path: PageName.home,
  builder: (context, state) => const HomePage(),
  routes: [
    GoRoute(
      path: PageName.shopByCategoryPath,
      builder: (context, state) => const ShopByCategoryPage(),
    ),
  ],
);
