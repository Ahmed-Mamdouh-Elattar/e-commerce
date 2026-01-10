import 'package:e_commerce/feature/authentication/data/models/user_model.dart';
import 'package:e_commerce/feature/authentication/domain/usecases/sign_in_usecase.dart';
import 'package:e_commerce/feature/authentication/domain/usecases/sign_up_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  FutureOr<AuthResponse?> build() async {
    return null;
  }

  Future<void> signUp({required UserModel userModel}) async {
    final signUpUseCase = ref.read(signUpUseCaseProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => signUpUseCase.call(userModel));
  }

  Future<void> signIn({required UserModel userModel}) async {
    final signInUseCase = ref.read(signInUsecaseProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => signInUseCase.call(userModel));
  }
}
