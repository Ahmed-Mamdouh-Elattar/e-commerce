import 'package:e_commerce/feature/orders/data/datasources/ordres_remote_data_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ordersRemoteDataSourceProvider = Provider<OrdresRemoteDataSource>((ref) {
  return OrdresRemoteDataSourceImpl();
});
