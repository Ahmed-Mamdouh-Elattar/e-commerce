import 'package:e_commerce/feature/authentication/data/repositories/auth_repo_impl_provider.dart';
import 'package:e_commerce/feature/authentication/domain/repositories/auth_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UpdateUserPasswordUseCase {
  final AuthRepo _authRepo;

  UpdateUserPasswordUseCase({required AuthRepo authRepo})
    : _authRepo = authRepo;

  Future<void> call(String password) async {
    return await _authRepo.updateUser(UserAttributes(password: password));
  }
}

final updateUserPasswordUseCaseProvider = Provider<UpdateUserPasswordUseCase>((
  ref,
) {
  return UpdateUserPasswordUseCase(authRepo: ref.read(authRepoProvider));
});
