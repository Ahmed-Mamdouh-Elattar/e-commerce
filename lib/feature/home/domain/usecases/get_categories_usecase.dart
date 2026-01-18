import 'package:e_commerce/feature/home/data/repositories/home_repo_impl_provider.dart';
import 'package:e_commerce/feature/home/domain/entities/category_entity.dart';
import 'package:e_commerce/feature/home/domain/repositories/home_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GetCategoriesUsecase {
  final HomeRepo _homeRepo;
  GetCategoriesUsecase({required HomeRepo homeRepo}) : _homeRepo = homeRepo;
  Future<List<CategoryEntity>> call() async {
    return _homeRepo.getCategories();
  }
}

final getCategoriesUsecaseProvider = Provider<GetCategoriesUsecase>((ref) {
  return GetCategoriesUsecase(homeRepo: ref.read(homeRepoImplProvider));
});
