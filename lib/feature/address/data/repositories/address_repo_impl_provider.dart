import 'package:e_commerce/core/providers/connectivity_provider/connectivity_provider.dart';
import 'package:e_commerce/feature/address/data/datasources/address_remote_data_source_provider.dart';
import 'package:e_commerce/feature/address/data/repositories/address_repo_impl.dart';
import 'package:e_commerce/feature/address/domain/repositories/address_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final addressRepoImplProvider = Provider<AddressRepo>((ref) {
  return AddressRepoImpl(
    remoteDataSource: ref.read(addressRemoteDataSourceProvider),
    connectivity: ref.read(connectivityProvider),
  );
});
