import 'package:e_commerce/core/config/app_text_style.dart';
import 'package:e_commerce/core/helper/constansts.dart';
import 'package:e_commerce/feature/home/domain/entities/category_entity.dart';
import 'package:e_commerce/core/entities/product_entity.dart';
import 'package:e_commerce/feature/home/presentation/riverpod/get_products_by_category_provider/get_products_by_category_provider.dart';
import 'package:e_commerce/feature/home/presentation/widgets/category_products_page/category_grid_list_builder.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CategoryProductsPageBody extends ConsumerWidget {
  const CategoryProductsPageBody({required this.categoryEntity, super.key});
  final CategoryEntity categoryEntity;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(
      getProductsByCategoryProvider(categoryEntity.id),
    );
    return products.when(
      data: (data) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(child: SizedBox(height: 16)),
              SliverToBoxAdapter(
                child: Text(
                  "${categoryEntity.name} (${data.length})",
                  style: AppTextStyle.bold16,
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 23)),
              ProductsGridList(products: data),
            ],
          ),
        );
      },
      error: (error, stackTrace) {
        return Center(child: Text(error.toString()));
      },
      loading: () {
        return Skeletonizer(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding),
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(child: SizedBox(height: 16)),
                SliverToBoxAdapter(
                  child: Text("Hoodies (240)", style: AppTextStyle.bold16),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 23)),
                ProductsGridList(
                  products: List.generate(5, (index) => ProductEntity(id: "")),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
