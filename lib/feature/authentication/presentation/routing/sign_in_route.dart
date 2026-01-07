import 'package:e_commerce/feature/authentication/presentation/pages/sign_in_page.dart';
import 'package:go_router/go_router.dart';

final signInRoute = GoRoute(
  path: '/sign-in',
  builder: (context, state) => const SignInPage(),
);
