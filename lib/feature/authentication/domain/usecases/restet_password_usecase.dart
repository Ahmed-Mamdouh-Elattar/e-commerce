import 'package:e_commerce/feature/authentication/data/repositories/auth_repo_impl_provider.dart';
import 'package:e_commerce/feature/authentication/domain/repositories/auth_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ResetPasswordUseCase {
  final AuthRepo _authRepo;

  ResetPasswordUseCase({required AuthRepo authRepo}) : _authRepo = authRepo;

  Future<void> call(String params) async {
    return _authRepo.resetPassword(params);
  }
}

final resetPasswordUseCaseProvider = Provider<ResetPasswordUseCase>((ref) {
  return ResetPasswordUseCase(authRepo: ref.read(authRepoProvider));
});
