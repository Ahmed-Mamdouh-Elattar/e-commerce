import 'package:e_commerce/core/providers/connectivity_provider/connectivity_provider.dart';
import 'package:e_commerce/feature/search/data/datasources/search_remote_data_source_provider.dart';
import 'package:e_commerce/feature/search/data/repositories/search_repo_impl.dart';
import 'package:e_commerce/feature/search/domain/repositories/search_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final searchRepoImpl = Provider<SearchRepo>((ref) {
  return SearchRepoImpl(
    remoteDataSource: ref.watch(searchRemoteDataSource),
    connectivity: ref.watch(connectivityProvider),
  );
});
