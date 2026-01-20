import 'package:e_commerce/feature/home/domain/entities/category_entity.dart';
import 'package:e_commerce/feature/home/presentation/riverpod/get_categories_provider/get_categories_provider.dart';
import 'package:e_commerce/feature/home/presentation/widgets/shop_by_category_page/category_list_tile_item.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CategoryListView extends ConsumerWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(getCategoriesProvider);
    return categories.when(
      data: (data) {
        return ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(height: 8);
          },
          shrinkWrap: true,
          itemCount: data.length,
          itemBuilder: (context, index) {
            return CategoryListTileItem(category: data[index]);
          },
        );
      },
      loading: () {
        return Skeletonizer(
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return const SizedBox(height: 8);
            },
            shrinkWrap: true,
            itemCount: 5,
            itemBuilder: (context, index) {
              return const CategoryListTileItem(
                category: CategoryEntity(id: "", name: "", image: ""),
              );
            },
          ),
        );
      },
      error: (error, stackTrace) {
        return Center(child: Text(error.toString()));
      },
    );
  }
}
