import 'package:e_commerce/core/providers/connectivity_provider/connectivity_provider.dart';
import 'package:e_commerce/feature/orders/data/datasources/orders_remote_data_source_provider.dart';
import 'package:e_commerce/feature/orders/data/repositories/orders_repo_impl.dart';
import 'package:e_commerce/feature/orders/domain/repositories/orders_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final ordersRepoImplProvider = Provider<OrdersRepo>((ref) {
  return OrdersRepoImpl(
    ref.read(ordersRemoteDataSourceProvider),
    ref.read(connectivityProvider),
  );
});
