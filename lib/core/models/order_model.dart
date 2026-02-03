import 'package:e_commerce/feature/orders/domain/entities/order_entity.dart';

class OrderModel {
  final String? id;
  final String? userId;
  final double? totalPrice;
  final String? status;
  final String? addressId;
  final String? paymentId;
  OrderModel({
    this.id,
    this.userId,
    this.totalPrice,
    this.status,
    this.addressId,
    this.paymentId,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      id: json['id'],
      userId: json['user_id'],
      totalPrice: json['total_price'],
      status: json['status'],
      addressId: json['address_id'],
      paymentId: json['payment_id'],
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': userId,
      'total_price': totalPrice,
      'status': status,
      'address_id': addressId,
      'payment_intent_id': paymentId,
    };
  }

  OrderModel copyWith({
    String? id,
    String? userId,
    double? totalPrice,
    String? status,
    String? addressId,
    String? paymentId,
  }) {
    return OrderModel(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      totalPrice: totalPrice ?? this.totalPrice,
      status: status ?? this.status,
      addressId: addressId ?? this.addressId,
      paymentId: paymentId ?? this.paymentId,
    );
  }

  OrderEntity toOrderEntity() {
    return OrderEntity(
      id: id,
      totalPrice: totalPrice,
      status: status,
      addressId: addressId,
    );
  }
}
