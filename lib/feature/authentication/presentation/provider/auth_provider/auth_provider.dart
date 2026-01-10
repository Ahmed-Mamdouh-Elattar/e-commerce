import 'package:e_commerce/feature/authentication/data/models/user_model.dart';
import 'package:e_commerce/feature/authentication/domain/usecases/restet_password_usecase.dart';
import 'package:e_commerce/feature/authentication/domain/usecases/sign_in_usecase.dart';
import 'package:e_commerce/feature/authentication/domain/usecases/sign_up_usecase.dart';
import 'package:e_commerce/feature/authentication/domain/usecases/update_user_password_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  FutureOr<bool> build() {
    return false;
  }

  Future<void> signUp({required UserModel userModel}) async {
    final signUpUseCase = ref.read(signUpUseCaseProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await signUpUseCase.call(userModel);
      return false; // for seperate reset password from sign in in password sign in page body
    });
  }

  Future<void> signIn({required UserModel userModel}) async {
    final signInUseCase = ref.read(signInUsecaseProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await signInUseCase.call(userModel);
      return false;
    });
  }

  Future<void> resetPassword({required String email}) async {
    final resetPasswordUseCase = ref.read(resetPasswordUseCaseProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await resetPasswordUseCase.call(email);
      return true;
    });
  }

  Future<void> updateUserPassword({required String password}) async {
    final updateUserPasswordUseCase = ref.read(
      updateUserPasswordUseCaseProvider,
    );
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await updateUserPasswordUseCase.call(password);
      return false;
    });
  }
}
