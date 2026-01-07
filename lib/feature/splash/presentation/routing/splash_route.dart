import 'package:e_commerce/feature/splash/presentation/pages/splash_page.dart';
import 'package:go_router/go_router.dart';
import 'package:e_commerce/core/routing/page_name.dart';

final splashRoute = GoRoute(
  path: PageName.splash,
  builder: (context, state) => const SplashPage(),
);
