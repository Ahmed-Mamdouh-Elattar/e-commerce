import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/feature/profile/presentation/pages/profile_page.dart';
import 'package:e_commerce/feature/profile/presentation/pages/update_user_profile_page.dart';
import 'package:go_router/go_router.dart';

final profileRoute = GoRoute(
  path: PageName.profile,
  builder: (context, state) => const ProfilePage(),
);

final updateProfileRoute = GoRoute(
  path: PageName.updateProfile,
  builder: (context, state) => const UpdateUserProfilePage(),
);
