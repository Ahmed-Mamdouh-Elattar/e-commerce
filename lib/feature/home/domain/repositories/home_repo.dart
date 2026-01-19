import 'package:e_commerce/feature/home/domain/entities/category_entity.dart';
import 'package:e_commerce/feature/home/domain/entities/product_entity.dart';

abstract class HomeRepo {
  Future<List<CategoryEntity>> getCategories();

  Future<List<ProductEntity>> getTopSellingProducts();

  Future<List<ProductEntity>> getNewInProducts();
}
