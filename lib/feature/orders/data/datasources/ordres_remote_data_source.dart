import 'dart:developer';

import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/core/models/order_model.dart';
import 'package:e_commerce/core/models/oreder_item_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class OrdresRemoteDataSource {
  Future<List<OrderModel>> getOrders();
  Future<List<OrederItemModel>> getOrderProducts(String orderId);
}

class OrdresRemoteDataSourceImpl implements OrdresRemoteDataSource {
  @override
  Future<List<OrderModel>> getOrders() async {
    try {
      final userId = Supabase.instance.client.auth.currentUser?.id;
      if (userId == null) {
        throw Failure(message: "User not found");
      }
      final response = await Supabase.instance.client
          .from('orders')
          .select('*')
          .eq('user_id', userId);
      return response.map((e) => OrderModel.fromJson(e)).toList();
    } on PostgrestException catch (e) {
      throw Failure(message: e.message);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }

  @override
  Future<List<OrederItemModel>> getOrderProducts(String orderId) async {
    try {
      final userId = Supabase.instance.client.auth.currentUser?.id;
      if (userId == null) {
        throw Failure(message: "User not found");
      }
      final response = await Supabase.instance.client
          .from('order_items')
          .select('''
      *,
      products (
        id,
        title,
        images,
        price
      )
    ''')
          .eq('order_id', orderId);
      log(response.toString());
      return response.map((e) => OrederItemModel.fromJson(e)).toList();
    } on PostgrestException catch (e) {
      throw Failure(message: e.message);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }
}
