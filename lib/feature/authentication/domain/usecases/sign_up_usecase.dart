import 'package:e_commerce/feature/authentication/data/models/user_model.dart';
import 'package:e_commerce/feature/authentication/data/repositories/auth_repo_impl_provider.dart';
import 'package:e_commerce/feature/authentication/domain/repositories/auth_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignUpUseCase {
  final AuthRepo _authRepo;

  SignUpUseCase({required AuthRepo authRepo}) : _authRepo = authRepo;

  Future<AuthResponse> call(UserModel userModel) async {
    return await _authRepo.signUp(userModel);
  }
}

final signUpUseCaseProvider = Provider<SignUpUseCase>((ref) {
  final authRepo = ref.watch(authRepoProvider);
  return SignUpUseCase(authRepo: authRepo);
});
