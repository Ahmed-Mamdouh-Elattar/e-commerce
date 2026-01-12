import 'package:e_commerce/feature/authentication/presentation/routing/sign_in_route.dart';
import 'package:e_commerce/feature/splash/presentation/routing/splash_route.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    redirect: (context, state) {
      final location = state.uri.toString();

      if (location.startsWith('e-commerce://')) {
        return location.replaceFirst('e-commerce://', '/');
      }

      return null;
    },
    routes: [splashRoute, signInRoute],
  );
});
