import 'package:e_commerce/core/models/product_model.dart';
import 'package:e_commerce/feature/orders/domain/entities/order_item_entity.dart';

class OrederItemModel {
  final String? id;
  final String? orderId;
  final String? productId;
  final int? quantity;
  final String? color;
  final String? size;
  final ProductModel? product;
  OrederItemModel({
    this.id,
    this.orderId,
    this.productId,
    this.quantity,
    this.color,
    this.size,
    this.product,
  });

  factory OrederItemModel.fromJson(Map<String, dynamic> json) {
    return OrederItemModel(
      id: json['id'],
      orderId: json['order_id'],
      productId: json['product_id'],
      quantity: json['quantity'],
      color: json['color'],
      size: json['size'],
      product: json['products'] != null
          ? ProductModel.fromJson(json['products'])
          : null,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'order_id': orderId,
      'product_id': productId,
      'quantity': quantity,
      'color': color,
      'size': size,
    };
  }

  OrederItemModel copyWith({
    String? id,
    String? orderId,
    String? productId,
    int? quantity,
    String? color,
    String? size,
  }) {
    return OrederItemModel(
      id: id ?? this.id,
      orderId: orderId ?? this.orderId,
      productId: productId ?? this.productId,
      quantity: quantity ?? this.quantity,
      color: color ?? this.color,
      size: size ?? this.size,
    );
  }

  OrderItemEntity toOrderItemEntity() {
    return OrderItemEntity(
      id: id,
      orderId: orderId,
      productId: productId,
      quantity: quantity,
      color: color,
      size: size,
      productImage: product?.images,
      productName: product?.title,
      productPrice: product?.price,
    );
  }
}
