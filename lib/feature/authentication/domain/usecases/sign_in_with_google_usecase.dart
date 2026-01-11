import 'package:e_commerce/feature/authentication/data/repositories/auth_repo_impl_provider.dart';
import 'package:e_commerce/feature/authentication/domain/repositories/auth_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignInWithGoogleUsecase {
  final AuthRepo _authRepo;

  SignInWithGoogleUsecase({required AuthRepo authRepo}) : _authRepo = authRepo;

  Future<AuthResponse> call() async {
    return await _authRepo.signInWithGoogle();
  }
}

final signInWithGoogleUsecaseProvider = Provider<SignInWithGoogleUsecase>((
  ref,
) {
  return SignInWithGoogleUsecase(authRepo: ref.read(authRepoProvider));
});
