import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/feature/wishlist/presentation/pages/wishlist_page.dart';
import 'package:go_router/go_router.dart';

final wishlistRoute = GoRoute(
  path: PageName.wishlist,
  builder: (context, state) => const WishlistPage(),
);
