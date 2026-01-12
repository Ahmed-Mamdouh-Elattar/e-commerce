import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/providers/auth_state_change_provider/auth_state_change_provider.dart';
import 'package:e_commerce/core/routing/page_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthCallbackPage extends ConsumerWidget {
  const AuthCallbackPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(authStateChangeProvider, (previous, next) {
      next.whenData((data) {
        if (data.session != null) {
          context.go(PageName.home);
        }
      });
    });

    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(color: AppColor.primary100),
      ),
    );
  }
}
