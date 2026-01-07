import 'dart:async';

import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/routing/page_name.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SplashPageBody extends HookWidget {
  const SplashPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      Timer timer = Timer(const Duration(seconds: 2), () {
        context.go(PageName.emailSignIn);
      });
      return () => timer.cancel();
    });
    return Center(
      child: SizedBox(
        width: 200.w,
        child: Image.asset(
          Assets.images.splashLogo.path,
        ).animate().scale(duration: 500.ms).fade(duration: 500.ms),
      ),
    );
  }
}
