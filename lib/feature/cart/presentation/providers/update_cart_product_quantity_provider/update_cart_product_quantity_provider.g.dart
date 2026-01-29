// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_cart_product_quantity_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UpdateCartProductQuantity)
final updateCartProductQuantityProvider = UpdateCartProductQuantityProvider._();

final class UpdateCartProductQuantityProvider
    extends $AsyncNotifierProvider<UpdateCartProductQuantity, void> {
  UpdateCartProductQuantityProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateCartProductQuantityProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateCartProductQuantityHash();

  @$internal
  @override
  UpdateCartProductQuantity create() => UpdateCartProductQuantity();
}

String _$updateCartProductQuantityHash() =>
    r'c3d893b6a15b8c672ef49627e44b6b94b1c41473';

abstract class _$UpdateCartProductQuantity extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
