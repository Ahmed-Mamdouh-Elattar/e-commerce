import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/feature/home/domain/entities/category_entity.dart';
import 'package:e_commerce/feature/home/presentation/pages/category_products_page.dart';
import 'package:e_commerce/feature/home/presentation/pages/home_page.dart';
import 'package:e_commerce/feature/home/presentation/pages/product_page.dart';
import 'package:e_commerce/feature/home/presentation/pages/shop_by_category_page.dart';
import 'package:e_commerce/feature/home/presentation/riverpod/get_product_by_id_provider.dart/get_product_by_id_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final homeRoute = GoRoute(
  path: PageName.home,
  builder: (context, state) => const HomePage(),
  routes: [
    GoRoute(
      path: PageName.shopByCategoryPath,
      builder: (context, state) => const ShopByCategoryPage(),
    ),
    GoRoute(
      path: PageName.categoryProductsPath,
      builder: (context, state) =>
          CategoryProductsPage(categoryEntity: state.extra as CategoryEntity),
    ),
    GoRoute(
      path: PageName.productPath,
      builder: (context, state) => ProviderScope(
        overrides: [
          productIdProvider.overrideWith((ref) => state.extra as String),
        ],
        child: const ProductPage(),
      ),
    ),
  ],
);
