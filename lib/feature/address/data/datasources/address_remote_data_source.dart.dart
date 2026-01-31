import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/feature/address/data/models/user_address_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AddressRemoteDataSource {
  Future<void> addAddress(UserAddressModel address);
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
}
