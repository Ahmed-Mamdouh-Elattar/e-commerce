import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/feature/authentication/data/datasources/auth_datasource.dart';
import 'package:e_commerce/feature/authentication/data/models/user_model.dart';
import 'package:e_commerce/feature/authentication/domain/repositories/auth_repo.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthDataSource _authDataSource;
  final Connectivity _connectivity;

  AuthRepoImpl({
    required AuthDataSource authDataSource,
    required Connectivity connectivity,
  }) : _authDataSource = authDataSource,
       _connectivity = connectivity;

  @override
  Future<AuthResponse> signUp(UserModel userModel) async {
    try {
      final result = await _connectivity.checkConnectivity();
      if (result.contains(ConnectivityResult.none)) {
        throw Failure(message: "No internet connection");
      }
      return await _authDataSource.signUp(userModel);
    } on AuthApiException catch (e) {
      throw Failure(message: e.message);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }

  @override
  Future<AuthResponse> signIn(UserModel userModel) async {
    try {
      final result = await _connectivity.checkConnectivity();
      if (result.contains(ConnectivityResult.none)) {
        throw Failure(message: "No internet connection");
      }
      return await _authDataSource.signIn(userModel);
    } on AuthApiException catch (e) {
      throw Failure(message: e.message);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }

  @override
  Future<void> resetPassword(String email) async {
    try {
      final result = await _connectivity.checkConnectivity();
      if (result.contains(ConnectivityResult.none)) {
        throw Failure(message: "No internet connection");
      }
      return await _authDataSource.resetPassword(email);
    } on AuthApiException catch (e) {
      throw Failure(message: e.message);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }

  @override
  Future<void> updateUser(UserAttributes userAttributes) async {
    try {
      final result = await _connectivity.checkConnectivity();
      if (result.contains(ConnectivityResult.none)) {
        throw Failure(message: "No internet connection");
      }
      return await _authDataSource.updateUser(userAttributes);
    } on AuthApiException catch (e) {
      throw Failure(message: e.message);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }

  @override
  Stream<AuthState> get authStateChange => _authDataSource.authStateChange;

  @override
  Future<AuthResponse> signInWithGoogle() async {
    try {
      final result = await _connectivity.checkConnectivity();
      if (result.contains(ConnectivityResult.none)) {
        throw Failure(message: "No internet connection");
      }
      return await _authDataSource.signInWithGoogle();
    } on GoogleSignInException catch (e) {
      throw Failure.fromGoogleSignInException(e);
    } on AuthApiException catch (e) {
      throw Failure(message: e.message);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }

  @override
  Future<void> signOut() async {
    try {
      final result = await _connectivity.checkConnectivity();
      if (result.contains(ConnectivityResult.none)) {
        throw Failure(message: "No internet connection");
      }
      return await _authDataSource.signOut();
    } on AuthApiException catch (e) {
      throw Failure(message: e.message);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }
}
