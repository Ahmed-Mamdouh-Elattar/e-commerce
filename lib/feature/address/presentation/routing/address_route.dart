import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/feature/address/presentation/pages/addresses_page.dart';
import 'package:e_commerce/feature/address/presentation/pages/choose_address_page.dart';
import 'package:e_commerce/feature/address/presentation/pages/take_user_address_page.dart';
import 'package:go_router/go_router.dart';

final addressRoute = GoRoute(
  path: PageName.takeUserAddress,
  builder: (context, state) => const TakeUserAddressPage(),
);
final addressesRoute = GoRoute(
  path: PageName.addresses,
  builder: (context, state) => const AddressesPage(),
);
final chooseAddressRoute = GoRoute(
  path: PageName.chooseAddress,
  builder: (context, state) => const ChooseAddressPage(),
);
