import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/feature/address/presentation/pages/take_user_address_page.dart';
import 'package:go_router/go_router.dart';

final addressRoute = GoRoute(
  path: PageName.takeUserAddress,
  builder: (context, state) => const TakeUserAddressPage(),
);
