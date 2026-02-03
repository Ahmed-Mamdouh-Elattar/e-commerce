import 'package:e_commerce/core/entities/user_address_entity.dart';
import 'package:e_commerce/feature/orders/domain/entities/order_entity.dart';
import 'package:e_commerce/feature/orders/domain/entities/order_item_entity.dart';

abstract class OrdersRepo {
  Future<List<OrderEntity>> getOrders();
  Future<List<OrderItemEntity>> getOrderProducts(String orderId);
  Future<UserAddressEntity> getOrderAddress(String addressId);
}
