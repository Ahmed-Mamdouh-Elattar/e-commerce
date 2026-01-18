import 'package:e_commerce/core/providers/connectivity_provider/connectivity_provider.dart';
import 'package:e_commerce/feature/home/data/datasources/home_remote_data_source_provider.dart';
import 'package:e_commerce/feature/home/data/repositories/home_repo_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeRepoImplProvider = Provider<HomeRepoImpl>((ref) {
  return HomeRepoImpl(
    connectivity: ref.read(connectivityProvider),
    homeRemoteDataSource: ref.read(homeRemoteDataSourceProvider),
  );
});
