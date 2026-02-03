import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:e_commerce/core/entities/user_address_entity.dart';
import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/feature/orders/data/datasources/ordres_remote_data_source.dart';
import 'package:e_commerce/feature/orders/domain/entities/order_entity.dart';
import 'package:e_commerce/feature/orders/domain/entities/order_item_entity.dart';
import 'package:e_commerce/feature/orders/domain/repositories/orders_repo.dart';

class OrdersRepoImpl implements OrdersRepo {
  final OrdresRemoteDataSource _remoteDataSource;
  final Connectivity _connectivity;
  OrdersRepoImpl(this._remoteDataSource, this._connectivity);
  @override
  Future<List<OrderEntity>> getOrders() async {
    final result = await _connectivity.checkConnectivity();
    if (result.contains(ConnectivityResult.none)) {
      throw Failure(message: 'No internet connection');
    }
    final orders = await _remoteDataSource.getOrders();
    return orders.map((e) => e.toOrderEntity()).toList();
  }

  @override
  Future<List<OrderItemEntity>> getOrderProducts(String orderId) async {
    final result = await _connectivity.checkConnectivity();
    if (result.contains(ConnectivityResult.none)) {
      throw Failure(message: 'No internet connection');
    }
    final orderItem = await _remoteDataSource.getOrderProducts(orderId);
    return orderItem.map((e) => e.toOrderItemEntity()).toList();
  }

  @override
  Future<UserAddressEntity> getOrderAddress(String addressId) async {
    final result = await _connectivity.checkConnectivity();
    if (result.contains(ConnectivityResult.none)) {
      throw Failure(message: 'No internet connection');
    }
    final address = await _remoteDataSource.getOrderAddress(addressId);
    return address.toUserAddressEntity();
  }
}
