import 'package:e_commerce/core/providers/connectivity_provider/connectivity_provider.dart';
import 'package:e_commerce/feature/cart/data/datasources/cart_remote_data_source_provider.dart';
import 'package:e_commerce/feature/cart/data/repositories/cart_repo_impl.dart';
import 'package:e_commerce/feature/cart/domain/repositories/cart_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cartRepoImplProvider = Provider<CartRepo>((ref) {
  return CartRepoImpl(
    ref.read(cartRemoteDataSource),
    ref.read(connectivityProvider),
  );
});
