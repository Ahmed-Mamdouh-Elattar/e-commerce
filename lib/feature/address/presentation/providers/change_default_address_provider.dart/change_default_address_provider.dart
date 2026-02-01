import 'package:e_commerce/feature/address/domain/usecases/change_default_address_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'change_default_address_provider.g.dart';

@riverpod
class ChangeDefaultAddressNotifier extends _$ChangeDefaultAddressNotifier {
  @override
  FutureOr<void> build() {}

  Future<void> changeDefaultAddress(String id) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await ref.read(changeDefaultAddressUseCaseProvider).call(id);
    });
  }
}
