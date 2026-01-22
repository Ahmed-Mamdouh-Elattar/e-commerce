import 'dart:developer';

import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/core/models/product_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class SearchRemoteDataSource {
  Future<List<ProductModel>> searchProducts(String query);
}

class SearchRemoteDataSourceImpl implements SearchRemoteDataSource {
  @override
  Future<List<ProductModel>> searchProducts(String query) async {
    try {
      final data = await Supabase.instance.client
          .from('products')
          .select("id,title,price,images")
          .ilike("title", "%$query%");
      log(data.toString());
      return data.map((e) => ProductModel.fromJson(e)).toList();
    } on PostgrestException catch (e) {
      throw Failure(message: e.message);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }
}
