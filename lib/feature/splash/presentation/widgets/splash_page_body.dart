import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/providers/auth_state_change_provider/auth_state_change_provider.dart';
import 'package:e_commerce/core/routing/page_name.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SplashPageBody extends ConsumerWidget {
  const SplashPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isSplashCompleted = false;
    ref.listen(authStateChangeProvider, (previous, next) {
      next.whenData((data) {
        if (data.session != null && isSplashCompleted) {
          context.go(PageName.home);
        } else if (data.session == null && isSplashCompleted) {
          context.go(PageName.emailSignIn);
        }
      });
    });
    return Center(
      child: SizedBox(
        width: 200.w,
        child: Image.asset(Assets.images.splashLogo.path)
            .animate(
              onComplete: (controller) {
                Future.delayed(const Duration(seconds: 1), () {
                  isSplashCompleted = true;
                  ref.invalidate(authStateChangeProvider);
                });
              },
            )
            .scale(duration: 500.ms)
            .fade(duration: 500.ms),
      ),
    );
  }
}
