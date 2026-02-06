import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/core/widgets/custom_cached_network_image.dart';
import 'package:e_commerce/feature/profile/presentation/provider/get_user_data_provider/get_user_data_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserHomeImage extends ConsumerWidget {
  const UserHomeImage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(getUserDataProvider);
    return InkWell(
      onTap: () {
        context.go(PageName.profile);
      },
      child: Container(
        height: 40,
        width: 40,
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(shape: BoxShape.circle),
        child: CustomCachedNetworkImage(imageUrl: user.image!),
      ),
    );
  }
}
