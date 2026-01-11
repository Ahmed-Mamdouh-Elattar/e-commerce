import 'package:e_commerce/feature/authentication/data/repositories/auth_repo_impl_provider.dart';
import 'package:e_commerce/feature/authentication/domain/repositories/auth_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthStateChangeUseCase {
  final AuthRepo _authRepo;
  AuthStateChangeUseCase({required AuthRepo authRepo}) : _authRepo = authRepo;

  Stream<AuthState> call() => _authRepo.authStateChange;
}

final authStateChangeUseCaseProvider = Provider<AuthStateChangeUseCase>((ref) {
  return AuthStateChangeUseCase(authRepo: ref.read(authRepoProvider));
});
