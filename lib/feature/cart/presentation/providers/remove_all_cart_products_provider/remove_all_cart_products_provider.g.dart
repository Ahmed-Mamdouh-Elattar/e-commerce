// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_all_cart_products_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RemoveAllCartProducts)
final removeAllCartProductsProvider = RemoveAllCartProductsProvider._();

final class RemoveAllCartProductsProvider
    extends $AsyncNotifierProvider<RemoveAllCartProducts, void> {
  RemoveAllCartProductsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'removeAllCartProductsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$removeAllCartProductsHash();

  @$internal
  @override
  RemoveAllCartProducts create() => RemoveAllCartProducts();
}

String _$removeAllCartProductsHash() =>
    r'6f5c1a5a8b369589897788a88dc7a86e8d36cbd1';

abstract class _$RemoveAllCartProducts extends $AsyncNotifier<void> {
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
