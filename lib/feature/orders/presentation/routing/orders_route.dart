import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/feature/orders/presentation/helper/order_details_params.dart';
import 'package:e_commerce/feature/orders/presentation/pages/order_details_page.dart';
import 'package:e_commerce/feature/orders/presentation/pages/orders_page.dart';
import 'package:go_router/go_router.dart';

final ordersRoute = GoRoute(
  path: PageName.orders,
  builder: (context, state) => const OrdersPage(),
  routes: [
    GoRoute(
      path: PageName.orderDetailsPath,
      builder: (context, state) {
        final params = state.extra as OrderDetailsParams;
        return OrderDetailsPage(params: params);
      },
    ),
  ],
);
