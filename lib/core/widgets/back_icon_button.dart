import 'package:e_commerce/core/config/app_color.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BackIconButton extends StatelessWidget {
  const BackIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Container(
        height: 40,
        width: 40,
        decoration: const BoxDecoration(
          color: AppColor.bgLight2,
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.arrow_back_ios_new),
      ),
      onPressed: () {
        if (Navigator.of(context).userGestureInProgress) {
          return;
        }
        if (context.mounted && GoRouter.of(context).canPop()) {
          context.pop();
        }
      },
    );
  }
}
