import 'package:e_commerce/feature/home/data/repositories/home_repo_impl_provider.dart';
import 'package:e_commerce/feature/home/domain/entities/product_entity.dart';
import 'package:e_commerce/feature/home/domain/repositories/home_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GetProductsByCategoryUseCase {
  final HomeRepo _homeRepo;
  GetProductsByCategoryUseCase({required HomeRepo homeRepo})
    : _homeRepo = homeRepo;

  Future<List<ProductEntity>> call(String categoryId) async {
    return await _homeRepo.getProductsByCategory(categoryId);
  }
}

final getProductsByCategoryUseCaseProvider =
    Provider<GetProductsByCategoryUseCase>((ref) {
      return GetProductsByCategoryUseCase(
        homeRepo: ref.read(homeRepoImplProvider),
      );
    });
