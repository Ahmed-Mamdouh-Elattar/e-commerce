import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptySearchResult extends StatelessWidget {
  const EmptySearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 100.h,
          width: 100.w,
          child: Image.asset(Assets.images.search.path),
        ),
        Text(
          "Sorry, we couldn't find any matching result for your Search.",
          textAlign: TextAlign.center,
          style: AppTextStyle.medium24,
        ),
      ],
    );
  }
}
