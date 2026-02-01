import 'package:e_commerce/feature/address/data/repositories/address_repo_impl_provider.dart';
import 'package:e_commerce/feature/address/domain/repositories/address_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChangeDefaultAddressUseCase {
  final AddressRepo _repo;
  ChangeDefaultAddressUseCase({required AddressRepo repo}) : _repo = repo;
  Future<void> call(String id) async {
    await _repo.changeDefaultAddress(id);
  }
}

final changeDefaultAddressUseCaseProvider =
    Provider<ChangeDefaultAddressUseCase>((ref) {
      return ChangeDefaultAddressUseCase(
        repo: ref.read(addressRepoImplProvider),
      );
    });
