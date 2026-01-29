// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_commerce/core/entities/product_entity.dart';

class CartEntity {
  final String? id;
  final String? productId;
  final String? size;
  final ColorEntity? color;
  final int? quantity;
  final ProductEntity? product;

  CartEntity({
    this.id,
    this.productId,
    this.size,
    this.color,
    this.quantity,
    this.product,
  });

  CartEntity copyWith({
    String? id,
    String? productId,
    String? size,
    ColorEntity? color,
    int? quantity,
    ProductEntity? product,
  }) {
    return CartEntity(
      id: id ?? this.id,
      productId: productId ?? this.productId,
      size: size ?? this.size,
      color: color ?? this.color,
      quantity: quantity ?? this.quantity,
      product: product ?? this.product,
    );
  }
}
