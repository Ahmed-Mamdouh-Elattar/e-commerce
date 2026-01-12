import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/feature/home/presentation/pages/home_page.dart';
import 'package:go_router/go_router.dart';

final homeRoute = GoRoute(
  path: PageName.home,
  builder: (context, state) => const HomePage(),
);
