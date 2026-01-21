// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_wishlist_product_ids_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GetWishlistProductIds)
final getWishlistProductIdsProvider = GetWishlistProductIdsProvider._();

final class GetWishlistProductIdsProvider
    extends $AsyncNotifierProvider<GetWishlistProductIds, List<String>> {
  GetWishlistProductIdsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getWishlistProductIdsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getWishlistProductIdsHash();

  @$internal
  @override
  GetWishlistProductIds create() => GetWishlistProductIds();
}

String _$getWishlistProductIdsHash() =>
    r'e22c7e1c281e597daca6594a5417000e5b1aac6b';

abstract class _$GetWishlistProductIds extends $AsyncNotifier<List<String>> {
  FutureOr<List<String>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<String>>, List<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<String>>, List<String>>,
              AsyncValue<List<String>>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
