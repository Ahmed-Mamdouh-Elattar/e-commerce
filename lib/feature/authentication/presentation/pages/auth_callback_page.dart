import 'dart:developer';

import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/feature/authentication/presentation/provider/auth_state_change_provider/auth_state_change_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthCallbackPage extends HookConsumerWidget {
  const AuthCallbackPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authstate = ref.watch(authStateChangeProvider);

    return authstate.when(
      data: (data) {
        log(
          "************************${data.event.name}***************************",
        );
        if (data.event == AuthChangeEvent.signedIn) {
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 100.h,
                    width: 100.w,
                    child: Image.asset(Assets.images.success.path),
                  ),
                  const SizedBox(height: 20),
                  const Text("Account created successfully"),
                  const SizedBox(height: 20),
                  const Text("Wait for 3 seconds"),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          );
        } else {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(color: AppColor.primary100),
            ),
          );
        }
      },
      loading: () {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(color: AppColor.primary100),
          ),
        );
      },
      error: (error, stackTrace) {
        return const Scaffold(body: Center(child: Text('Error')));
      },
    );
  }
}
