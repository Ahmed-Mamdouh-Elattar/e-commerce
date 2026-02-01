import 'package:e_commerce/feature/address/domain/usecases/delete_address_usecase.dart';
import 'package:e_commerce/feature/address/presentation/providers/get_user_addresses_provider/get_user_addresses_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'delete_address_provider.g.dart';

@riverpod
class DeleteAddressProvider extends _$DeleteAddressProvider {
  @override
  FutureOr<void> build() {}

  Future<void> deleteAddress(String addressId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () async => await ref.read(deleteAddressUsecaseProvider).call(addressId),
    );
    if (state.hasValue) {
      ref.invalidate(getUserAddressesProvider);
    }
  }
}
