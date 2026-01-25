import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/extensions/theme_extension.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/core/widgets/custom_cached_network_image.dart';
import 'package:e_commerce/feature/profile/presentation/provider/get_user_data_provider/get_user_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class UserProfileInformation extends ConsumerWidget {
  const UserProfileInformation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userData = ref.watch(getUserDataProvider);
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(shape: BoxShape.circle),
          child: userData.image != null
              ? CustomCachedNetworkImage(imageUrl: userData.image!)
              : Image.asset(Assets.images.profile.path),
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
                  Text(userData.name ?? '', style: AppTextStyle.bold16),
                  const SizedBox(height: 8),
                  Text(
                    userData.email ?? '',
                    style: AppTextStyle.medium16.copyWith(
                      color: AppColor.black100.withValues(alpha: 0.5),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              TextButton(
                onPressed: () async {
                  await context.push(PageName.updateProfile);
                },
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
