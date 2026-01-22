import 'dart:ui';

class ProductEntity {
  final String id;
  final String? categoryId;
  final String? title;
  final num? price;
  final String? description;
  final String? images;
  final List<String>? sizes;
  final List<ColorEntity>? colors;
  final bool? isTopSelling;
  final bool? isNewIn;
  final String? review;

  ProductEntity({
    required this.id,
    this.categoryId,
    this.title,
    this.price,
    this.description,
    this.images,
    this.sizes,
    this.colors,
    this.isTopSelling,
    this.isNewIn,
    this.review,
  });
}

class ColorEntity {
  final String name;
  final Color color;
  ColorEntity({required this.name, required this.color});
  factory ColorEntity.fromString(String colorString) {
    final color = colorString.split(":");
    final colorValue = Color(
      int.parse(color[1].replaceAll("#", "ff"), radix: 16),
    );
    final name = color[0];

    return ColorEntity(name: name, color: colorValue);
  }
}
