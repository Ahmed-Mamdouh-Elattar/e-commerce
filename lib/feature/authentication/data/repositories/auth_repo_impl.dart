import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:e_commerce/feature/authentication/data/datasources/auth_datasource.dart';
import 'package:e_commerce/feature/authentication/data/models/user_model.dart';
import 'package:e_commerce/feature/authentication/domain/repositories/auth_repo.dart';
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
    final result = await _connectivity.checkConnectivity();
    if (result.contains(ConnectivityResult.none)) {
      throw Exception('No internet connection');
    }
    return await _authDataSource.signUp(userModel);
  }

  @override
  Future<AuthResponse> signIn(UserModel userModel) async {
    final result = await _connectivity.checkConnectivity();
    if (result.contains(ConnectivityResult.none)) {
      throw Exception('No internet connection');
    }
    return await _authDataSource.signIn(userModel);
  }
}
