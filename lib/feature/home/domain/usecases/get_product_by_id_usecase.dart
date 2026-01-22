import 'package:e_commerce/feature/home/data/repositories/home_repo_impl_provider.dart';
import 'package:e_commerce/core/entities/product_entity.dart';
import 'package:e_commerce/feature/home/domain/repositories/home_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GetProductByIdUsecase {
  final HomeRepo _homeRepo;
  GetProductByIdUsecase({required HomeRepo homeRepo}) : _homeRepo = homeRepo;
  Future<ProductEntity> getProductById(String productId) async {
    return await _homeRepo.getProductById(productId);
  }
}

final getProductByIdUsecaseProvider = Provider<GetProductByIdUsecase>((ref) {
  return GetProductByIdUsecase(homeRepo: ref.read(homeRepoImplProvider));
});
