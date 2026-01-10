import 'package:e_commerce/feature/authentication/data/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthRepo {
  Future<AuthResponse> signUp(UserModel userModel);
  Future<AuthResponse> signIn(UserModel userModel);
  Future<void> resetPassword(String email);
}
