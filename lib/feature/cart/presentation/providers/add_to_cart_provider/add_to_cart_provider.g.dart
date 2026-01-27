// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AddToCart)
final addToCartProvider = AddToCartProvider._();

final class AddToCartProvider
    extends $NotifierProvider<AddToCart, AddToCartStates> {
  AddToCartProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addToCartProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addToCartHash();

  @$internal
  @override
  AddToCart create() => AddToCart();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AddToCartStates value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AddToCartStates>(value),
    );
  }
}

String _$addToCartHash() => r'fdf4b7aab8e718c387431a60b6d721336fe40db7';

abstract class _$AddToCart extends $Notifier<AddToCartStates> {
  AddToCartStates build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AddToCartStates, AddToCartStates>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AddToCartStates, AddToCartStates>,
              AddToCartStates,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
