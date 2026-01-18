import 'package:e_commerce/feature/home/domain/entities/category_entity.dart';
import 'package:e_commerce/feature/home/domain/usecases/get_categories_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getCategoriesProvider = FutureProvider.autoDispose<List<CategoryEntity>>((
  ref,
) {
  return ref.read(getCategoriesUsecaseProvider).call();
});
