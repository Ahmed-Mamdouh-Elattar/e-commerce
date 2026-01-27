import 'package:e_commerce/feature/cart/data/datasources/cart_remote_data_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cartRemoteDataSource = Provider<CartRemoteDataSource>(
  (ref) => CartRemoteDataSourceImpl(),
);
