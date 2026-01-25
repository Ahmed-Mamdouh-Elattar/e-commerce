import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/helper/assets.gen.dart';
import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/core/widgets/custom_cached_network_image.dart';
import 'package:e_commerce/core/widgets/custom_eleveted_button.dart';
import 'package:e_commerce/feature/profile/presentation/provider/get_user_data_provider/get_user_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UpdateUserProfilePageBody extends HookConsumerWidget {
  const UpdateUserProfilePageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userData = ref.watch(getUserDataProvider);
    final nameController = useTextEditingController(text: userData.name);
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: kPadding),
      child: Column(
        children: [
          const SizedBox(height: 30),
          Stack(
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
              Positioned(
                bottom: -10,
                right: -10,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: Container(
                    width: 30,
                    height: 30,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.primary100,
                    ),
                    child: const Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          TextField(
            controller: nameController,
            decoration: const InputDecoration(hintText: "Enter your name"),
          ),
          const SizedBox(height: 30),

          CustomElevetedButton(label: 'Update', onPressed: () {}),
        ],
      ),
    );
  }
}
