import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:e_commerce/feature/home/data/datasources/home_remote_data_source.dart';

final homeRemoteDataSourceProvider = Provider<HomeRemoteDataSource>((ref) {
  return HomeRemoteDataSourceImpl();
});
