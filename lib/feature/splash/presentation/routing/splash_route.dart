import 'package:e_commerce/feature/splash/presentation/pages/splash_page.dart';
import 'package:go_router/go_router.dart';

final splashRoute = GoRoute(
  path: '/',
  builder: (context, state) => const SplashPage(),
);
