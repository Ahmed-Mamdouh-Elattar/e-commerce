import 'package:e_commerce/feature/home/domain/entities/product_entity.dart';
import 'package:e_commerce/feature/home/domain/usecases/get_top_selling_products_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final getTopSellingProductsProvider =
    FutureProvider.autoDispose<List<ProductEntity>>((ref) {
      return ref.watch(getTopSellingProductsUseCaseProvider).call();
    });
