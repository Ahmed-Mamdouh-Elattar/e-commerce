// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_cart_product_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RemoveCartProduct)
final removeCartProductProvider = RemoveCartProductProvider._();

final class RemoveCartProductProvider
    extends $AsyncNotifierProvider<RemoveCartProduct, void> {
  RemoveCartProductProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'removeCartProductProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$removeCartProductHash();

  @$internal
  @override
  RemoveCartProduct create() => RemoveCartProduct();
}

String _$removeCartProductHash() => r'1b37f3cb0476cc88d612ca09f4ee17598a04f1cc';

abstract class _$RemoveCartProduct extends $AsyncNotifier<void> {
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
