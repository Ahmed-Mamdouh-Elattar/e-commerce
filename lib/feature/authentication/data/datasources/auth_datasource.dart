import 'package:e_commerce/feature/authentication/data/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:e_commerce/core/helper/constansts.dart';

abstract class AuthDataSource {
  Future<AuthResponse> signUp(UserModel userModel);
  Future<AuthResponse> signIn(UserModel userModel);
  Future<void> resetPassword(String email);
}

class AuthDataSourceImpl implements AuthDataSource {
  @override
  Future<AuthResponse> signUp(UserModel userModel) async {
    final AuthResponse res = await Supabase.instance.client.auth.signUp(
      email: userModel.email,
      password: userModel.password,
      emailRedirectTo: kEmailSignUpRedirectUrl,
      data: {
        'first_name': userModel.firstName,
        'last_name': userModel.lastName,
      },
    );
    return res;
  }

  @override
  Future<AuthResponse> signIn(UserModel userModel) async {
    final AuthResponse res = await Supabase.instance.client.auth
        .signInWithPassword(
          email: userModel.email,
          password: userModel.password,
        );
    return res;
  }

  @override
  Future<void> resetPassword(String email) async {
    await Supabase.instance.client.auth.resetPasswordForEmail(
      email,
      redirectTo: kForgotPasswordRedirectUrl,
    );
  }
}
