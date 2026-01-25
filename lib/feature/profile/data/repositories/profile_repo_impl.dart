import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/feature/profile/data/datasources/profile_remote_data_source.dart';
import 'package:e_commerce/feature/profile/domain/entities/user_entity.dart';
import 'package:e_commerce/feature/profile/domain/repositories/profile_repo.dart';

class ProfileRepoImpl implements ProfileRepo {
  final ProfileRemoteDataSource _remoteDataSource;

  ProfileRepoImpl(this._remoteDataSource);
  @override
  UserEntity getUserData() {
    try {
      final user = _remoteDataSource.getUserData();
      return user.toUserEntity();
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }
}
