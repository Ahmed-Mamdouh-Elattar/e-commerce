import 'package:e_commerce/feature/profile/presentation/widgets/profile_tile_item.dart';
import 'package:flutter/widgets.dart';

class ProfileTileItemsProperities extends StatelessWidget {
  const ProfileTileItemsProperities({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileTileItem(title: "Address", onTap: () {}),
        const SizedBox(height: 8),
        ProfileTileItem(title: "Wishlist", onTap: () {}),
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
