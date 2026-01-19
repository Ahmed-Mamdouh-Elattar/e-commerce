class ProductEntity {
  final String id;
  final String? categoryId;
  final String? title;
  final num? price;
  final String? description;
  final String? images;
  final List<String>? sizes;
  final List<String>? colors;
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
