import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_to_cart_states.freezed.dart';

@freezed
sealed class AddToCartStates with _$AddToCartStates {
  const factory AddToCartStates.initial() = _AddToCartInitial;
  const factory AddToCartStates.loading() = _AddToCartLoading;
  const factory AddToCartStates.loaded() = _AddToCartLoaded;
  const factory AddToCartStates.failure(String message) = _AddToCartFailure;
}
