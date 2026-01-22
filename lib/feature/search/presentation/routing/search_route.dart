import 'package:e_commerce/core/routing/page_name.dart';
import 'package:e_commerce/feature/search/presentation/pages/search_page.dart';
import 'package:go_router/go_router.dart';

final searchRoute = GoRoute(
  path: PageName.search,
  builder: (context, state) => const SearchPage(),
);
