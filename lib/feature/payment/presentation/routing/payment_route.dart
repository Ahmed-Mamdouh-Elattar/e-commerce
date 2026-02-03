import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/feature/payment/presentation/pages/order_success_page.dart';
import 'package:go_router/go_router.dart';

final paymentRoutes = GoRoute(
  path: PageName.orderSuccess,
  builder: (context, state) => const OrderSuccessPage(),
);
