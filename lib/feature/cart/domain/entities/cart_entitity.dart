import 'package:e_commerce/core/entities/product_entity.dart';

class CartEntity {
  final String productId;
  final String? size;
  final ColorEntity? color;
  final int? quantity;
  final ProductEntity? product;
  CartEntity({
    required this.productId,
    this.size,
    this.color,
    this.quantity,
    this.product,
  });
}
