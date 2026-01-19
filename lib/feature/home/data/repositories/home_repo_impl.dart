import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/feature/home/data/datasources/home_remote_data_source.dart';
import 'package:e_commerce/feature/home/domain/entities/category_entity.dart';
import 'package:e_commerce/feature/home/domain/entities/product_entity.dart';
import 'package:e_commerce/feature/home/domain/repositories/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final HomeRemoteDataSource _homeRemoteDataSource;
  final Connectivity _connectivity;
  HomeRepoImpl({
    required Connectivity connectivity,
    required HomeRemoteDataSource homeRemoteDataSource,
  }) : _homeRemoteDataSource = homeRemoteDataSource,
       _connectivity = connectivity;
  @override
  Future<List<CategoryEntity>> getCategories() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      throw Failure(message: 'No internet connection');
    }
    final categories = await _homeRemoteDataSource.getCategories();
    return categories.map((e) => e.toCategoryEntity()).toList();
  }

  @override
  Future<List<ProductEntity>> getTopSellingProducts() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      throw Failure(message: 'No internet connection');
    }
    final products = await _homeRemoteDataSource.getTopSellingProducts();
    return products.map((e) => e.toProductEntity()).toList();
  }

  @override
  Future<List<ProductEntity>> getNewInProducts() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      throw Failure(message: 'No internet connection');
    }
    final products = await _homeRemoteDataSource.getNewInProducts();
    return products.map((e) => e.toProductEntity()).toList();
  }
}
