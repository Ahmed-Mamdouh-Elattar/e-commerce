import 'package:e_commerce/feature/authentication/domain/usecases/sign_in_with_google_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'sign_in_with_google_provider.g.dart';

@riverpod
class SignInWithGoogle extends _$SignInWithGoogle {
  @override
  FutureOr<void> build() {}

  Future<void> signInWithGoogle() async {
    final signInWithGoogleUsecase = ref.read(signInWithGoogleUsecaseProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => signInWithGoogleUsecase.call());
  }
}
