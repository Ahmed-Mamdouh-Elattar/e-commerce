import 'package:e_commerce/feature/home/domain/entities/product_entity.dart';
import 'package:e_commerce/feature/home/domain/repositories/home_repo.dart';

class GetProductsByCategoryUseCase {
  final HomeRepo _homeRepo;
  GetProductsByCategoryUseCase({required HomeRepo homeRepo})
    : _homeRepo = homeRepo;

  Future<List<ProductEntity>> call(String categoryId) async {
    return await _homeRepo.getProductsByCategory(categoryId);
  }
}
