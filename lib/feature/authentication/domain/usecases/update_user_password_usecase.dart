import 'package:e_commerce/feature/authentication/domain/repositories/auth_repo.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UpdateUserPasswordUseCase {
  final AuthRepo _authRepo;

  UpdateUserPasswordUseCase({required AuthRepo authRepo})
    : _authRepo = authRepo;

  Future<void> call(String password) async {
    return await _authRepo.updateUser(UserAttributes(password: password));
  }
}
