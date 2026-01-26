import 'package:e_commerce/feature/profile/domain/usecases/update_user_profile_usecase.dart';
import 'package:e_commerce/feature/profile/presentation/provider/get_user_data_provider/get_user_data_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_user_profile_provider.g.dart';

@riverpod
class UpdateUserProfile extends _$UpdateUserProfile {
  @override
  FutureOr<void> build() {}

  Future<void> call({required String name, XFile? image}) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(updateUserProfileUsecaseProvider).call(name, image),
    );
    ref.invalidate(getUserDataProvider);
  }
}
