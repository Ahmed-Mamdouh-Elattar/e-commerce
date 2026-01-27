import 'package:e_commerce/core/entities/product_entity.dart';
import 'package:e_commerce/feature/home/domain/usecases/get_product_by_id_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'get_product_by_id_provider.g.dart';

@Riverpod(dependencies: [productId])
Future<ProductEntity> getProductById(Ref ref) async {
  final productId = ref.watch(productIdProvider);
  final getProductByIdUsecase = ref.read(getProductByIdUsecaseProvider);
  return getProductByIdUsecase.getProductById(productId);
}

@Riverpod(dependencies: [])
String productId(Ref ref) {
  return "";
}
