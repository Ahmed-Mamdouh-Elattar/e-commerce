import 'package:e_commerce/feature/address/data/repositories/address_repo_impl_provider.dart';
import 'package:e_commerce/feature/address/domain/repositories/address_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DeleteAddressUsecase {
  final AddressRepo _repo;
  DeleteAddressUsecase({required AddressRepo repo}) : _repo = repo;

  Future<void> call(String addressId) async {
    await _repo.deleteAddress(addressId);
  }
}

final deleteAddressUsecaseProvider = Provider<DeleteAddressUsecase>((ref) {
  final repo = ref.watch(addressRepoImplProvider);
  return DeleteAddressUsecase(repo: repo);
});
