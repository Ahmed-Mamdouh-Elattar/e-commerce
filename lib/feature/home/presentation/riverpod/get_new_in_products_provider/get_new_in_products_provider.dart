import 'package:e_commerce/feature/home/domain/entities/product_entity.dart';
import 'package:e_commerce/feature/home/domain/usecases/get_new_in_products_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final getNewInProductsProvider =
    FutureProvider.autoDispose<List<ProductEntity>>((ref) {
      return ref.watch(getNewInProductsUseCaseProvider).call();
    });
