import 'package:e_commerce/feature/orders/domain/entities/order_entity.dart';

abstract class OrdersRepo {
  Future<List<OrderEntity>> getOrders();
}
