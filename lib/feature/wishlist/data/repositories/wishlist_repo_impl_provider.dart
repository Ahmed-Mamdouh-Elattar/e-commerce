import 'package:e_commerce/core/providers/connectivity_provider/connectivity_provider.dart';
import 'package:e_commerce/feature/wishlist/data/datasources/wishlist_remote_data_source_provider.dart';
import 'package:e_commerce/feature/wishlist/data/repositories/wishlist_repo_impl.dart';
import 'package:e_commerce/feature/wishlist/domain/repositories/wishlist_repo.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final wishlistRepoImplProvider = Provider<WishlistRepo>(
  (ref) => WishlistRepoImpl(
    connectivity: ref.watch(connectivityProvider),
    wishlistRemoteDataSource: ref.watch(wishlistRemoteDataSourceProvider),
  ),
);
