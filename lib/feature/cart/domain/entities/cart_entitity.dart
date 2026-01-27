import 'package:e_commerce/core/entities/product_entity.dart';

class CartEntity {
  final String productId;
  final String size;
  final ColorEntity color;
  final int quantity;
  CartEntity({
    required this.productId,
    required this.size,
    required this.color,
    required this.quantity,
  });
}
