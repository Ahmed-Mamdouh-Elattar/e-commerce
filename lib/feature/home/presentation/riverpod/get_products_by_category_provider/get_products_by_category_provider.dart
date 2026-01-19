import 'package:e_commerce/feature/home/domain/entities/product_entity.dart';
import 'package:e_commerce/feature/home/domain/usecases/get_products_by_category_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getProductsByCategoryProvider = FutureProvider.family
    .autoDispose<List<ProductEntity>, String>((ref, categoryId) async {
      return ref.watch(getProductsByCategoryUseCaseProvider).call(categoryId);
    });
