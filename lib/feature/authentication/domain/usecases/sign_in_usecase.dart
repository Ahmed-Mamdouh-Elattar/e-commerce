import 'package:e_commerce/feature/authentication/data/models/user_model.dart';
import 'package:e_commerce/feature/authentication/data/repositories/auth_repo_impl_provider.dart';
import 'package:e_commerce/feature/authentication/domain/repositories/auth_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignInUseCase {
  final AuthRepo _authRepo;

  SignInUseCase({required AuthRepo authRepo}) : _authRepo = authRepo;

  Future<AuthResponse> call(UserModel userModel) async {
    return await _authRepo.signIn(userModel);
  }
}

final signInUsecaseProvider = Provider<SignInUseCase>((ref) {
  return SignInUseCase(authRepo: ref.read(authRepoProvider));
});
