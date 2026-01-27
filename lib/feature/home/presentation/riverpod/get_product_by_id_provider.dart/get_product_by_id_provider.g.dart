// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_product_by_id_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getProductById)
final getProductByIdProvider = GetProductByIdProvider._();

final class GetProductByIdProvider
    extends
        $FunctionalProvider<
          AsyncValue<ProductEntity>,
          ProductEntity,
          FutureOr<ProductEntity>
        >
    with $FutureModifier<ProductEntity>, $FutureProvider<ProductEntity> {
  GetProductByIdProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getProductByIdProvider',
        isAutoDispose: true,
        dependencies: <ProviderOrFamily>[productIdProvider],
        $allTransitiveDependencies: <ProviderOrFamily>[
          GetProductByIdProvider.$allTransitiveDependencies0,
        ],
      );

  static final $allTransitiveDependencies0 = productIdProvider;

  @override
  String debugGetCreateSourceHash() => _$getProductByIdHash();

  @$internal
  @override
  $FutureProviderElement<ProductEntity> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<ProductEntity> create(Ref ref) {
    return getProductById(ref);
  }
}

String _$getProductByIdHash() => r'0fdce2b0ae247d3ffccf3b90fc413993d081b5e6';

@ProviderFor(productId)
final productIdProvider = ProductIdProvider._();

final class ProductIdProvider
    extends $FunctionalProvider<String, String, String>
    with $Provider<String> {
  ProductIdProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productIdProvider',
        isAutoDispose: true,
        dependencies: <ProviderOrFamily>[],
        $allTransitiveDependencies: <ProviderOrFamily>[],
      );

  @override
  String debugGetCreateSourceHash() => _$productIdHash();

  @$internal
  @override
  $ProviderElement<String> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  String create(Ref ref) {
    return productId(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$productIdHash() => r'1f0293ac549e3fa51711270aa7d67abc0ddacbf8';
