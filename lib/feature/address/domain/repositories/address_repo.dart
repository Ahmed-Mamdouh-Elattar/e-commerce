import 'package:e_commerce/feature/address/domain/entities/user_address_entity.dart';

abstract class AddressRepo {
  Future<void> addAddress(UserAddressEntity address);
  Future<List<UserAddressEntity>> getAddresses();
  Future<void> deleteAddress(String id);
  Future<void> changeDefaultAddress(String id);
}
