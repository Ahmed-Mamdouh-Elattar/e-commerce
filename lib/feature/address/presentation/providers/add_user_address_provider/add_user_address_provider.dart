import 'package:e_commerce/feature/address/domain/entities/user_address_entity.dart';
import 'package:e_commerce/feature/address/domain/usecases/add_user_address_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'add_user_address_provider.g.dart';

@riverpod
class AddUserAddress extends _$AddUserAddress {
  @override
  FutureOr<void> build() {}

  Future<void> addAddress(UserAddressEntity address) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await ref.read(addUserAddressUsecaseProvider).call(address);
    });
  }
}
