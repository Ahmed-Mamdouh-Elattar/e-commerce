import 'package:e_commerce/core/config/app_color.dart';
import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/widgets/products_grid_list.dart';
import 'package:e_commerce/core/widgets/shop_by_category_content.dart';
import 'package:e_commerce/feature/search/presentation/provider/search_provider.dart';
import 'package:e_commerce/feature/search/presentation/provider/search_states.dart';
import 'package:e_commerce/feature/search/presentation/widgets/empty_search_result.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchPageBodyContent extends ConsumerWidget {
  const SearchPageBodyContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(searchProvider);
    return state.when(
      initial: () {
        return const SingleChildScrollView(child: ShopByCategoryContent());
      },
      empty: () {
        return const EmptySearchResult();
      },
      loaded: (products) {
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Text(
                "${products.length} Results Found",
                style: AppTextStyle.medium16,
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            ProductsGridList(products: products),
          ],
        );
      },
      failureState: (message) {
        return Center(child: Text(message));
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(color: AppColor.primary100),
        );
      },
    );
  }
}
