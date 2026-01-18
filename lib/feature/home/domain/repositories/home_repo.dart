import 'package:e_commerce/feature/home/domain/entities/category_entity.dart';

abstract class HomeRepo {
  Future<List<CategoryEntity>> getCategories();
}
