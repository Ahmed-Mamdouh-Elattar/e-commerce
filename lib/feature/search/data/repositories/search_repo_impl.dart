import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:e_commerce/core/entities/product_entity.dart';
import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/feature/search/data/datasources/search_remote_data_source.dart';
import 'package:e_commerce/feature/search/domain/repositories/search_repo.dart';

class SearchRepoImpl implements SearchRepo {
  final SearchRemoteDataSource _remoteDataSource;
  final Connectivity _connectivity;
  SearchRepoImpl({
    required SearchRemoteDataSource remoteDataSource,
    required Connectivity connectivity,
  }) : _remoteDataSource = remoteDataSource,
       _connectivity = connectivity;
  @override
  Future<List<ProductEntity>> searchProducts(String query) async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      throw Failure(message: 'No internet connection');
    }
    final result = await _remoteDataSource.searchProducts(query);
    return result.map((e) => e.toProductEntity()).toList();
  }
}
