// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_properities_selection_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProductProperitiesSelection)
final productProperitiesSelectionProvider =
    ProductProperitiesSelectionProvider._();

final class ProductProperitiesSelectionProvider
    extends
        $NotifierProvider<
          ProductProperitiesSelection,
          ProductProperitiesSelectionState
        > {
  ProductProperitiesSelectionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'productProperitiesSelectionProvider',
        isAutoDispose: true,
        dependencies: <ProviderOrFamily>[getProductByIdProvider],
        $allTransitiveDependencies: <ProviderOrFamily>[
          ProductProperitiesSelectionProvider.$allTransitiveDependencies0,
          ProductProperitiesSelectionProvider.$allTransitiveDependencies1,
        ],
      );

  static final $allTransitiveDependencies0 = getProductByIdProvider;
  static final $allTransitiveDependencies1 =
      GetProductByIdProvider.$allTransitiveDependencies0;

  @override
  String debugGetCreateSourceHash() => _$productProperitiesSelectionHash();

  @$internal
  @override
  ProductProperitiesSelection create() => ProductProperitiesSelection();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ProductProperitiesSelectionState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ProductProperitiesSelectionState>(
        value,
      ),
    );
  }
}

String _$productProperitiesSelectionHash() =>
    r'09e45cd2d8874959d918c507ff7a629d88da0ab5';

abstract class _$ProductProperitiesSelection
    extends $Notifier<ProductProperitiesSelectionState> {
  ProductProperitiesSelectionState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              ProductProperitiesSelectionState,
              ProductProperitiesSelectionState
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                ProductProperitiesSelectionState,
                ProductProperitiesSelectionState
              >,
              ProductProperitiesSelectionState,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
