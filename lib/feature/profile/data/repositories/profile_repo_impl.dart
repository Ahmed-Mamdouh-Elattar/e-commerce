import 'dart:typed_data';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/feature/profile/data/datasources/profile_remote_data_source.dart';
import 'package:e_commerce/feature/profile/domain/entities/user_entity.dart';
import 'package:e_commerce/feature/profile/domain/repositories/profile_repo.dart';

class ProfileRepoImpl implements ProfileRepo {
  final ProfileRemoteDataSource _remoteDataSource;
  final Connectivity _connectivity;

  ProfileRepoImpl(this._remoteDataSource, this._connectivity);
  @override
  UserEntity getUserData() {
    try {
      final user = _remoteDataSource.getUserData();
      return user.toUserEntity();
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }

  @override
  Future<void> updateUserData(String name, Uint8List? image) async {
    final connectivityResult = await _connectivity.checkConnectivity();
    if (connectivityResult.contains(ConnectivityResult.none)) {
      throw Failure(message: 'No internet connection');
    }
    try {
      await _remoteDataSource.updateUserData(name, image);
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }
}
