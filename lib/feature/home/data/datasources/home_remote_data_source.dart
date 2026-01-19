import 'dart:developer';

import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/feature/home/data/models/category_model.dart';
import 'package:e_commerce/feature/home/data/models/product_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class HomeRemoteDataSource {
  Future<List<CategoryModel>> getCategories();
  Future<List<ProductModel>> getTopSellingProducts();
  Future<List<ProductModel>> getNewInProducts();
  Future<List<ProductModel>> getProductsByCategory(String categoryId);
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

  @override
  Future<List<ProductModel>> getTopSellingProducts() async {
    try {
      final data = await Supabase.instance.client
          .from('products')
          .select("id,title,price,images")
          .eq("is_top_selling", true);
      log(data.toString());
      return data.map((e) => ProductModel.fromJson(e)).toList();
    } on PostgrestException catch (e) {
      throw Failure(message: e.message);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }

  @override
  Future<List<ProductModel>> getNewInProducts() async {
    try {
      final data = await Supabase.instance.client
          .from('products')
          .select("id,title,price,images")
          .eq("is_new_in", true);
      log(data.toString());
      return data.map((e) => ProductModel.fromJson(e)).toList();
    } on PostgrestException catch (e) {
      throw Failure(message: e.message);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }

  @override
  Future<List<ProductModel>> getProductsByCategory(String categoryId) async {
    try {
      final data = await Supabase.instance.client
          .from('products')
          .select("id,title,price,images")
          .eq("category_id", categoryId);
      log(data.toString());
      return data.map((e) => ProductModel.fromJson(e)).toList();
    } on PostgrestException catch (e) {
      throw Failure(message: e.message);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }
}
