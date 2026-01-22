import 'dart:async';

import 'package:e_commerce/core/entities/product_entity.dart';
import 'package:e_commerce/feature/search/domain/usecases/search_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'search_provider.g.dart';

@riverpod
class Search extends _$Search {
  Timer? _timer;

  @override
  FutureOr<List<ProductEntity>> build() {
    ref.onDispose(() {
      _timer?.cancel();
    });
    return [];
  }

  Future<void> search(String query) async {
    _timer?.cancel();

    if (query.trim().isEmpty) {
      state = const AsyncData([]);
      return;
    }

    _timer = Timer(const Duration(milliseconds: 500), () async {
      state = const AsyncLoading();
      state = await AsyncValue.guard(() => ref.read(searchUsecase).call(query));
    });
  }
}
