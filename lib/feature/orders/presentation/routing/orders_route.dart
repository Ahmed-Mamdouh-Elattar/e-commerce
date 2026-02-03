import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/feature/orders/presentation/pages/orders_page.dart';
import 'package:go_router/go_router.dart';

final ordersRoute = GoRoute(
  path: PageName.orders,
  builder: (context, state) => const OrdersPage(),
);
