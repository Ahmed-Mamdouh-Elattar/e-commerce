import 'package:e_commerce/feature/orders/domain/entities/order_entity.dart';

class OrderDetailsParams {
  final OrderEntity order;
  final String addressId;
  final int orderNumber;
  OrderDetailsParams({
    required this.order,
    required this.addressId,
    required this.orderNumber,
  });
}
