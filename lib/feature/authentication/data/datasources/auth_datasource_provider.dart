import 'package:e_commerce/feature/authentication/data/datasources/auth_datasource.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authDataSourceProvider = Provider<AuthDataSource>((ref) {
  return AuthDataSourceImpl();
});
