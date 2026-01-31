import 'package:e_commerce/feature/address/data/repositories/address_repo_impl_provider.dart';
import 'package:e_commerce/feature/address/domain/entities/user_address_entity.dart';
import 'package:e_commerce/feature/address/domain/repositories/address_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GetUserAddressesUsecase {
  final AddressRepo _addressRepo;
  GetUserAddressesUsecase({required AddressRepo addressRepo})
    : _addressRepo = addressRepo;
  Future<List<UserAddressEntity>> call() async {
    return await _addressRepo.getAddresses();
  }
}

final getUserAddressesUsecaseProvider = Provider<GetUserAddressesUsecase>((
  ref,
) {
  return GetUserAddressesUsecase(
    addressRepo: ref.read(addressRepoImplProvider),
  );
});
