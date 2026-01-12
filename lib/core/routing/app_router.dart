import 'package:e_commerce/core/providers/auth_state_change_provider/auth_state_change_provider.dart';
import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/core/routing/router_notifier.dart';
import 'package:e_commerce/feature/authentication/presentation/routing/sign_in_route.dart';
import 'package:e_commerce/feature/home/presentation/routing/home_route.dart';
import 'package:e_commerce/feature/splash/presentation/routing/splash_route.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  final routerNotifier = ref.watch(routerNotifierProvider);
  return GoRouter(
    refreshListenable: routerNotifier,
    redirect: (context, state) {
      final authStateChange = ref.read(authStateChangeProvider);
      final location = state.uri.toString();

      if (location.startsWith('e-commerce://')) {
        return location.replaceFirst('e-commerce://', '/');
      }
      if (authStateChange.value?.event == AuthChangeEvent.signedOut) {
        return PageName.emailSignIn;
      }

      return null;
    },
    routes: [splashRoute, signInRoute, homeRoute],
  );
});
