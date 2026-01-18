import 'package:e_commerce/core/error/failure_extension.dart';
import 'package:e_commerce/feature/home/domain/entities/category_entity.dart';
import 'package:e_commerce/feature/home/presentation/riverpod/get_categories_provider/get_categories_provider.dart';
import 'package:e_commerce/feature/home/presentation/widgets/category_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CategoriesSection extends ConsumerWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(getCategoriesProvider);
    return categories.when(
      data: (data) {
        return Row(
          children: data
              .map((category) => CategoryType(category: category))
              .toList(),
        );
      },
      error: (error, stackTrace) {
        return Center(child: Text(error.errorMessage));
      },
      loading: () {
        return Skeletonizer(
          child: Row(
            children: List.generate(
              5,
              (index) => const CategoryType(
                category: CategoryEntity(id: '', image: "", name: 'Hoodies'),
              ),
            ),
          ),
        );
      },
    );
  }
}
