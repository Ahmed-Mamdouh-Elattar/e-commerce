import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/feature/authentication/data/models/user_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:e_commerce/core/helper/constansts.dart';

abstract class AuthDataSource {
  Future<AuthResponse> signUp(UserModel userModel);
  Future<AuthResponse> signIn(UserModel userModel);
  Future<void> resetPassword(String email);
  Future<void> updateUser(UserAttributes userAttributes);
  Stream<AuthState> get authStateChange;
  Future<AuthResponse> signInWithGoogle();
  Future<void> signOut();
}

class AuthDataSourceImpl implements AuthDataSource {
  @override
  Future<AuthResponse> signUp(UserModel userModel) async {
    final AuthResponse res = await Supabase.instance.client.auth.signUp(
      email: userModel.email,
      password: userModel.password,
      emailRedirectTo: kEmailSignUpRedirectUrl,
      data: {'name': "${userModel.firstName} ${userModel.lastName}"},
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
      redirectTo: kUpdatePasswordRedirectUrl,
    );
  }

  @override
  Future<void> updateUser(UserAttributes userAttributes) {
    return Supabase.instance.client.auth.updateUser(userAttributes);
  }

  @override
  Stream<AuthState> get authStateChange =>
      Supabase.instance.client.auth.onAuthStateChange;

  @override
  Future<AuthResponse> signInWithGoogle() async {
    final GoogleSignIn googleSignIn = GoogleSignIn.instance;
    await googleSignIn.initialize(
      clientId: dotenv.env[androidClientId],
      serverClientId: dotenv.env[webClientId],
    );

    final googleUser = await googleSignIn.authenticate();

    final googleAuth = googleUser.authentication;

    final idToken = googleAuth.idToken;

    if (idToken == null) {
      throw Failure(message: "No ID Token found.");
    }

    final response = await Supabase.instance.client.auth.signInWithIdToken(
      provider: OAuthProvider.google,

      idToken: idToken,
    );
    return response;
  }

  @override
  Future<void> signOut() {
    return Supabase.instance.client.auth.signOut();
  }
}
