import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/feature/authentication/presentation/pages/auth_callback_page.dart';
import 'package:e_commerce/feature/authentication/presentation/pages/create_account_page.dart';
import 'package:e_commerce/feature/authentication/presentation/pages/email_sign_in_page.dart';
import 'package:e_commerce/feature/authentication/presentation/pages/update_password_page.dart';
import 'package:e_commerce/feature/authentication/presentation/pages/password_sign_in_page.dart';
import 'package:e_commerce/feature/authentication/presentation/provider/email_provider/email_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final signInRoute = GoRoute(
  path: PageName.emailSignIn,
  builder: (context, state) => const EmailSignInPage(),
  routes: [
    GoRoute(
      path: PageName.updatePasswordPath,
      builder: (context, state) => const UpdatePasswordPage(),
    ),
    GoRoute(
      path: PageName.authCallbackPath,
      builder: (context, state) => const AuthCallbackPage(),
    ),
    GoRoute(
      path: PageName.passwordSignInPath,
      builder: (context, state) => ProviderScope(
        overrides: [emailProvider.overrideWithValue(state.extra.toString())],
        child: const PasswordSignInPage(),
      ),
    ),
    GoRoute(
      path: PageName.createAccountPath,
      builder: (context, state) => const CreateAccountPage(),
    ),
  ],
);
