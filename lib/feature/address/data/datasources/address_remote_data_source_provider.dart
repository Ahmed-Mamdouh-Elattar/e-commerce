import 'package:e_commerce/feature/address/data/datasources/address_remote_data_source.dart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final addressRemoteDataSourceProvider = Provider<AddressRemoteDataSource>((
  ref,
) {
  return AddressRemoteDataSourceImpl();
});
