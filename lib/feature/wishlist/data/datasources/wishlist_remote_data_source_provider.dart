import 'package:e_commerce/feature/wishlist/data/datasources/wishlist_remote_data_source.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final wishlistRemoteDataSourceProvider = Provider<WishlistRemoteDataSource>(
  (ref) => WishlistRemoteDataSourceImpl(),
);
