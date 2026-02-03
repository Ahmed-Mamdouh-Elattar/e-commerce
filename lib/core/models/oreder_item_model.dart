class OrederItemModel {
  final String? id;
  final String? orderId;
  final String? productId;
  final int? quantity;
  final String? color;
  final String? size;
  OrederItemModel({
    this.id,
    this.orderId,
    this.productId,
    this.quantity,
    this.color,
    this.size,
  });

  factory OrederItemModel.fromJson(Map<String, dynamic> json) {
    return OrederItemModel(
      id: json['id'],
      orderId: json['order_id'],
      productId: json['product_id'],
      quantity: json['quantity'],
      color: json['color'],
      size: json['size'],
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
}
