import 'package:e_commerce/core/entities/product_entity.dart';
import 'package:e_commerce/feature/search/data/repositories/search_repo_impl_provider.dart';
import 'package:e_commerce/feature/search/domain/repositories/search_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SearchUsecase {
  final SearchRepo _searchRepo;
  SearchUsecase({required SearchRepo searchRepo}) : _searchRepo = searchRepo;
  Future<List<ProductEntity>> call(String query) async {
    return _searchRepo.searchProducts(query);
  }
}

final searchUsecase = Provider<SearchUsecase>((ref) {
  return SearchUsecase(searchRepo: ref.read(searchRepoImpl));
});
