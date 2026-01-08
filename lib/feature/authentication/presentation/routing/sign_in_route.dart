import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/feature/authentication/presentation/pages/create_account_page.dart';
import 'package:e_commerce/feature/authentication/presentation/pages/email_sign_in_page.dart';
import 'package:e_commerce/feature/authentication/presentation/pages/forgot_password_page.dart';
import 'package:e_commerce/feature/authentication/presentation/pages/password_sign_in_page.dart';
import 'package:go_router/go_router.dart';

final signInRoute = GoRoute(
  path: PageName.emailSignIn,
  builder: (context, state) => const EmailSignInPage(),
  routes: [
    GoRoute(
      path: PageName.passwordSignInPath,
      builder: (context, state) => const PasswordSignInPage(),
      routes: [
        GoRoute(
          path: PageName.forgotPasswordPath,
          builder: (context, state) => const ForgotPasswordPage(),
        ),
      ],
    ),
    GoRoute(
      path: PageName.createAccountPath,
      builder: (context, state) => const CreateAccountPage(),
    ),
  ],
);
