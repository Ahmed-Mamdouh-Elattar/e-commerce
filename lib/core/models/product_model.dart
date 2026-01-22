// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:e_commerce/core/entities/product_entity.dart';

class ProductModel {
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

  const ProductModel({
    required this.id,
    required this.categoryId,
    required this.title,
    required this.price,
    required this.description,
    required this.images,
    required this.sizes,
    required this.colors,
    required this.isTopSelling,
    required this.isNewIn,
    required this.review,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'category_id': categoryId,
      'title': title,
      'price': price,
      'description': description,
      'images': images,
      'sizes': sizes,
      'colors': colors,
      'is_top_selling': isTopSelling,
      'is_new_in': isNewIn,
      'review': review,
    };
  }

  factory ProductModel.fromJson(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] as String,
      categoryId: map['category_id'] != null
          ? map['category_id'] as String
          : null,
      title: map['title'] != null ? map['title'] as String : null,
      price: map['price'] != null ? map['price'] as num : null,
      description: map['description'] != null
          ? map['description'] as String
          : null,
      images: map['images'] != null ? map['images'] as String : null,
      sizes: map['sizes'] != null
          ? List<String>.from((map['sizes'] as List<dynamic>))
          : null,
      colors: map['colors'] != null
          ? List<String>.from((map['colors'] as List<dynamic>))
          : null,
      isTopSelling: map['is_top_selling'] != null
          ? map['is_top_selling'] as bool
          : null,
      isNewIn: map['is_new_in'] != null ? map['is_new_in'] as bool : null,
      review: map['review'] != null ? map['review'] as String : null,
    );
  }

  ProductEntity toProductEntity() {
    return ProductEntity(
      id: id,
      categoryId: categoryId,
      title: title,
      price: price,
      description: description,
      images: images,
      sizes: sizes,
      colors: colors?.map((e) => ColorEntity.fromString(e)).toList(),
      isTopSelling: isTopSelling,
      isNewIn: isNewIn,
      review: review,
    );
  }
}
