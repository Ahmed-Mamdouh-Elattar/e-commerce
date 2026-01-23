import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:flutter/material.dart';

class UserProfileInformation extends StatelessWidget {
  const UserProfileInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage(Assets.images.profile.path),
        ),
        const SizedBox(height: 32),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: context.isDarkMode ? AppColor.bgDark2 : AppColor.bgLight2,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Gilbert Jones', style: AppTextStyle.bold16),
                  const SizedBox(height: 8),
                  Text(
                    'Glbertjones001@gmail.com',
                    style: AppTextStyle.medium16.copyWith(
                      color: AppColor.black100.withValues(alpha: 0.5),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Edit',
                  style: AppTextStyle.medium16.copyWith(
                    color: AppColor.primary100,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
