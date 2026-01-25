import 'package:e_commerce/feature/profile/data/datasources/profile_remote_data_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final profileRemoteDataSourceProvider = Provider<ProfileRemoteDataSource>(
  (ref) => ProfileRemoteDataSourceImpl(),
);
