class OrderItemEntity {
  final String? id;
  final String? orderId;
  final String? productId;
  final int? quantity;
  final String? color;
  final String? size;
  final String? productImage;
  final String? productName;
  final num? productPrice;
  final String? addressCity;
  final String? addressStreet;
  final String? addressPhone;
  OrderItemEntity({
    this.id,
    this.orderId,
    this.productId,
    this.quantity,
    this.color,
    this.size,
    this.addressCity,
    this.addressPhone,
    this.addressStreet,
    this.productImage,
    this.productName,
    this.productPrice,
  });
}
