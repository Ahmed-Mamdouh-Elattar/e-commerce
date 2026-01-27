// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_commerce/core/entities/product_entity.dart';

class ProductProperitiesSelectionState {
  final String size;
  final ColorEntity color;
  final int quantity;
  ProductProperitiesSelectionState({
    required this.size,
    required this.color,
    required this.quantity,
  });

  ProductProperitiesSelectionState copyWith({
    String? size,
    ColorEntity? color,
    int? quantity,
  }) {
    return ProductProperitiesSelectionState(
      size: size ?? this.size,
      color: color ?? this.color,
      quantity: quantity ?? this.quantity,
    );
  }
}
