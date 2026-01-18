import 'package:e_commerce/feature/home/domain/entities/category_entity.dart';

class CategoryModel {
  final String id;
  final String name;
  final String image;

  CategoryModel({required this.id, required this.name, required this.image});
  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
    id: json['id'],
    name: json['name'],
    image: json['image_url'],
  );
  CategoryEntity toCategoryEntity() =>
      CategoryEntity(id: id, name: name, image: image);
}
