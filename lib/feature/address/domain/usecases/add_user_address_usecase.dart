import 'package:e_commerce/feature/address/data/repositories/address_repo_impl_provider.dart';
import 'package:e_commerce/core/entities/user_address_entity.dart';
import 'package:e_commerce/feature/address/domain/repositories/address_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddUserAddressUsecase {
  final AddressRepo _addressRepo;
  AddUserAddressUsecase({required AddressRepo addressRepo})
    : _addressRepo = addressRepo;

  Future<void> call(UserAddressEntity address) async {
    return _addressRepo.addAddress(address);
  }
}

final addUserAddressUsecaseProvider = Provider<AddUserAddressUsecase>((ref) {
  return AddUserAddressUsecase(addressRepo: ref.read(addressRepoImplProvider));
});
