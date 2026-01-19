import 'package:e_commerce/feature/home/data/repositories/home_repo_impl_provider.dart';
import 'package:e_commerce/feature/home/domain/entities/product_entity.dart';
import 'package:e_commerce/feature/home/domain/repositories/home_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GetTopSellingProductsUseCase {
  final HomeRepo _homeRepo;
  GetTopSellingProductsUseCase({required HomeRepo homeRepo})
    : _homeRepo = homeRepo;
  Future<List<ProductEntity>> call() async {
    return _homeRepo.getTopSellingProducts();
  }
}

final getTopSellingProductsUseCaseProvider =
    Provider<GetTopSellingProductsUseCase>((ref) {
      return GetTopSellingProductsUseCase(
        homeRepo: ref.read(homeRepoImplProvider),
      );
    });
