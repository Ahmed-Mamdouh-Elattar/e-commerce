import 'package:e_commerce/core/providers/connectivity_provider/connectivity_provider.dart';
import 'package:e_commerce/feature/authentication/data/datasources/auth_datasource_provider.dart';
import 'package:e_commerce/feature/authentication/data/repositories/auth_repo_impl.dart';
import 'package:e_commerce/feature/authentication/domain/repositories/auth_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authRepoProvider = Provider<AuthRepo>((ref) {
  final authDataSource = ref.watch(authDataSourceProvider);
  final connectivity = ref.watch(connectivityProvider);
  return AuthRepoImpl(
    authDataSource: authDataSource,
    connectivity: connectivity,
  );
});
