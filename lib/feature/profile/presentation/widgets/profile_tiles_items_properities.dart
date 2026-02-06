import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/feature/profile/presentation/widgets/profile_tile_item.dart';
import 'package:e_commerce/feature/theme/presentation/widgets/theme_switching.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileTileItemsProperities extends StatelessWidget {
  const ProfileTileItemsProperities({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ThemeSwitching(),
        const SizedBox(height: 8),
        ProfileTileItem(
          title: "Address",
          onTap: () async {
            await context.push(PageName.addresses);
          },
        ),
        const SizedBox(height: 8),
        ProfileTileItem(
          title: "Wishlist",
          onTap: () {
            context.push(PageName.wishlist);
          },
        ),
        const SizedBox(height: 8),
        ProfileTileItem(title: "Help", onTap: () {}),
        const SizedBox(height: 8),
        ProfileTileItem(title: "Support", onTap: () {}),
      ],
    );
  }
}
