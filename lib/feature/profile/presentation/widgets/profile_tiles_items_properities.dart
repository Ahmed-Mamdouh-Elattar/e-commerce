import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/feature/profile/presentation/widgets/profile_tile_item.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class ProfileTileItemsProperities extends StatelessWidget {
  const ProfileTileItemsProperities({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        ProfileTileItem(title: "Payment", onTap: () {}),
        const SizedBox(height: 8),
        ProfileTileItem(title: "Help", onTap: () {}),
        const SizedBox(height: 8),
        ProfileTileItem(title: "Support", onTap: () {}),
      ],
    );
  }
}
