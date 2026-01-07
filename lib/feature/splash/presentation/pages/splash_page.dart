import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/feature/splash/presentation/widgets/splash_page_body.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColor.primary100,
      body: SplashPageBody(),
    );
  }
}
