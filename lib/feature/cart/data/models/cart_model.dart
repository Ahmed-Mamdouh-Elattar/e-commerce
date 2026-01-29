import 'dart:convert';

import 'package:e_commerce/core/entities/product_entity.dart';
import 'package:e_commerce/core/helper/color_to_hex.dart';
import 'package:e_commerce/core/models/product_model.dart';
import 'package:e_commerce/feature/cart/domain/entities/cart_entitity.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class CartModel {
  final String? id;
  final String? productId;
  final String? userId;
  final String? size;
  final String? color;
  final int? quantity;
  ProductModel? product;
  CartModel({
    this.id,
    this.productId,
    this.userId,
    this.size,
    this.color,
    this.quantity,
    this.product,
  });

  Map<String, dynamic> toMap({bool isUpdate = false}) {
    if (isUpdate) {
      return <String, dynamic>{'quantity': quantity};
    }
    return <String, dynamic>{
      'product_id': productId,
      'user_id': userId,
      'size': size,
      'color': color,
      'quantity': quantity,
    };
  }

  factory CartModel.fromMap(Map<String, dynamic> map) {
    return CartModel(
      id: map['id'] as String,
      productId: map['product_id'] as String,
      userId: map['user_id'] as String,
      size: map['size'] as String,
      color: map['color'] as String,
      quantity: map['quantity'] as int,
      product: ProductModel.fromJson(map['product'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory CartModel.fromJson(String source) =>
      CartModel.fromMap(json.decode(source) as Map<String, dynamic>);

  factory CartModel.fromEntity(CartEntity entity) {
    final color = "${entity.color!.name}:#${colorToHex(entity.color!.color)}";
    return CartModel(
      id: entity.id,
      productId: entity.productId,
      size: entity.size,
      color: color,
      quantity: entity.quantity,
    );
  }

  CartModel copyWith({
    String? id,
    String? productId,
    String? userId,
    String? size,
    String? color,
    int? quantity,
  }) {
    return CartModel(
      id: id ?? this.id,
      productId: productId ?? this.productId,
      userId: userId ?? this.userId,
      size: size ?? this.size,
      color: color ?? this.color,
      quantity: quantity ?? this.quantity,
    );
  }

  CartEntity toCartEntity() {
    return CartEntity(
      id: id,
      productId: productId!,
      size: size!,
      color: ColorEntity.fromString(color!),
      quantity: quantity!,
      product: product!.toProductEntity(),
    );
  }
}
