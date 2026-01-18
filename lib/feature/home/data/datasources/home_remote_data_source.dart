import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/feature/home/data/models/category_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class HomeRemoteDataSource {
  Future<List<CategoryModel>> getCategories();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  @override
  Future<List<CategoryModel>> getCategories() async {
    try {
      final data = await Supabase.instance.client.from('categories').select();
      return data.map((e) => CategoryModel.fromJson(e)).toList();
    } on PostgrestException catch (e) {
      throw Failure(message: e.message);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }
}
