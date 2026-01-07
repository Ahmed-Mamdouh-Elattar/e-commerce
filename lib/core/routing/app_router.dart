import 'package:e_commerce/feature/authentication/presentation/routing/sign_in_route.dart';
import 'package:e_commerce/feature/splash/presentation/routing/splash_route.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(routes: [splashRoute, signInRoute]);
