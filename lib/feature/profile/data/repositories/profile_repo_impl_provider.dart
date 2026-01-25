import 'package:e_commerce/feature/profile/data/datasources/profile_remote_data_source_provider.dart';
import 'package:e_commerce/feature/profile/data/repositories/profile_repo_impl.dart';
import 'package:e_commerce/feature/profile/domain/repositories/profile_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final profileRepoImplProvider = Provider<ProfileRepo>(
  (ref) => ProfileRepoImpl(ref.read(profileRemoteDataSourceProvider)),
);
