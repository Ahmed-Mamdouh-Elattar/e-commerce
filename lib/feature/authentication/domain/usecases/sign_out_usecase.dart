import 'package:e_commerce/feature/authentication/data/repositories/auth_repo_impl_provider.dart';
import 'package:e_commerce/feature/authentication/domain/repositories/auth_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignOutUsecase {
  final AuthRepo _authRepo;

  SignOutUsecase({required AuthRepo authRepo}) : _authRepo = authRepo;

  Future<void> call() async {
    return await _authRepo.signOut();
  }
}

final signOutUsecaseProvider = Provider<SignOutUsecase>((ref) {
  return SignOutUsecase(authRepo: ref.read(authRepoProvider));
});
