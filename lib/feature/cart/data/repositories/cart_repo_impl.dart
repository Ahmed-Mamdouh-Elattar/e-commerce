import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/feature/cart/data/datasources/cart_remote_data_source.dart';
import 'package:e_commerce/feature/cart/data/models/cart_model.dart';
import 'package:e_commerce/feature/cart/domain/entities/cart_entitity.dart';
import 'package:e_commerce/feature/cart/domain/repositories/cart_repo.dart';

class CartRepoImpl implements CartRepo {
  final CartRemoteDataSource _remoteDataSource;
  final Connectivity _connectivity;
  CartRepoImpl(this._remoteDataSource, this._connectivity);
  @override
  Future<void> addToCart(CartEntity productCart) async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      throw Failure(message: "No internet connection");
    }

    final cartModel = CartModel.fromEntity(productCart);
    return await _remoteDataSource.addToCart(cartModel);
  }

  @override
  Future<List<CartEntity>> getCartProducts() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      throw Failure(message: "No internet connection");
    }
    final cartModels = await _remoteDataSource.getCartProducts();
    return cartModels.map((e) => e.toCartEntity()).toList();
  }

  @override
  Future<void> removeAllCartProducts() async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      throw Failure(message: "No internet connection");
    }
    return await _remoteDataSource.removeAllCartProducts();
  }
}
