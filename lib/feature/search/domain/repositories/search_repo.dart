import 'package:e_commerce/core/entities/product_entity.dart';

abstract class SearchRepo {
  Future<List<ProductEntity>> searchProducts(String query);
}
