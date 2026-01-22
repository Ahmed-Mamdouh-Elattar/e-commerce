import 'package:e_commerce/core/entities/product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_states.freezed.dart';

@freezed
sealed class SearchStates with _$SearchStates {
  const factory SearchStates.initial() = _Initial;
  const factory SearchStates.loading() = _Loading;
  const factory SearchStates.loaded(List<ProductEntity> products) = _Loaded;
  const factory SearchStates.empty() = _Empty;
  const factory SearchStates.failureState(String message) = _FailureState;
}
