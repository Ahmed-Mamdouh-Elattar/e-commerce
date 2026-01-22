import 'dart:async';

import 'package:e_commerce/feature/search/domain/usecases/search_usecase.dart';
import 'package:e_commerce/feature/search/presentation/provider/search_states.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'search_provider.g.dart';

@riverpod
class Search extends _$Search {
  Timer? _timer;

  @override
  SearchStates build() {
    ref.onDispose(() {
      _timer?.cancel();
    });
    return const SearchStates.initial();
  }

  Future<void> search(String query) async {
    _timer?.cancel();

    if (query.trim().isEmpty) {
      state = const SearchStates.empty();
      return;
    }

    _timer = Timer(const Duration(milliseconds: 500), () async {
      state = const SearchStates.loading();
      final result = await AsyncValue.guard(
        () => ref.read(searchUsecase).call(query),
      );
      state = result.maybeWhen(
        data: (products) {
          if (products.isEmpty) {
            return const SearchStates.empty();
          } else {
            return SearchStates.loaded(products);
          }
        },
        error: (error, stackTrace) =>
            SearchStates.failureState(error.toString()),
        orElse: () => state,
      );
    });
  }
}
