import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/feature/notification/presentation/pages/notification_page.dart';
import 'package:go_router/go_router.dart';

final notificationRoute = GoRoute(
  path: PageName.notification,
  builder: (context, state) => const NotificationPage(),
);
