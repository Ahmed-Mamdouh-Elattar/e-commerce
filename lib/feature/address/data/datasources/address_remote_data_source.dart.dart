import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/feature/address/data/models/user_address_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AddressRemoteDataSource {
  Future<void> addAddress(UserAddressModel address);
  Future<List<UserAddressModel>> getAddresses();
}

class AddressRemoteDataSourceImpl implements AddressRemoteDataSource {
  @override
  Future<void> addAddress(UserAddressModel address) async {
    try {
      final userId = Supabase.instance.client.auth.currentUser?.id;
      if (userId == null) {
        throw Failure(message: 'User not authenticated');
      }
      await Supabase.instance.client
          .from('addresses')
          .insert(address.copyWith(userId: userId).toMap());
    } on PostgrestException catch (e) {
      throw Failure(message: e.message);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }

  @override
  Future<List<UserAddressModel>> getAddresses() async {
    try {
      final userId = Supabase.instance.client.auth.currentUser?.id;
      if (userId == null) {
        throw Failure(message: 'User not authenticated');
      }
      final response = await Supabase.instance.client
          .from('addresses')
          .select('*')
          .eq('user_id', userId);
      return response.map((e) => UserAddressModel.fromMap(e)).toList();
    } on PostgrestException catch (e) {
      throw Failure(message: e.message);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }
}
