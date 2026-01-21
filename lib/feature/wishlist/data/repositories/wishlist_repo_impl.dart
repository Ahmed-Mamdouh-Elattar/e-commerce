import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/feature/wishlist/data/datasources/wishlist_remote_data_source.dart';
import 'package:e_commerce/feature/wishlist/domain/repositories/wishlist_repo.dart';

class WishlistRepoImpl implements WishlistRepo {
  final WishlistRemoteDataSource _wishlistRemoteDataSource;
  final Connectivity _connectivity;
  WishlistRepoImpl({
    required Connectivity connectivity,
    required WishlistRemoteDataSource wishlistRemoteDataSource,
  }) : _connectivity = connectivity,
       _wishlistRemoteDataSource = wishlistRemoteDataSource;
  @override
  Future<void> addToWishlist(String productId) async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      throw Failure(message: "No internet connection");
    }
    await _wishlistRemoteDataSource.addToWishlist(productId);
  }

  @override
  Future<void> removeFromWishlist(String productId) async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      throw Failure(message: "No internet connection");
    }
    await _wishlistRemoteDataSource.removeFromWishlist(productId);
  }

  @override
  Future<List<String>> getWishlistProductIds() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      throw Failure(message: "No internet connection");
    }
    return await _wishlistRemoteDataSource.getWishlistProductIds();
  }
}
