import 'package:e_commerce/feature/search/data/datasources/search_remote_data_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final searchRemoteDataSource = Provider<SearchRemoteDataSource>((ref) {
  return SearchRemoteDataSourceImpl();
});
