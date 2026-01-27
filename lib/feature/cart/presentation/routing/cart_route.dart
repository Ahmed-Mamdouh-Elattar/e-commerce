import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/feature/cart/presentation/pages/cart_page.dart';
import 'package:go_router/go_router.dart';

final cartRoute = GoRoute(
  path: PageName.cart,
  builder: (context, state) => const CartPage(),
);
