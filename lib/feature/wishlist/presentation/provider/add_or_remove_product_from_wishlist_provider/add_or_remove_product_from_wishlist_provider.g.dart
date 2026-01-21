// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_or_remove_product_from_wishlist_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AddOrRemoveProductFromWishlist)
final addOrRemoveProductFromWishlistProvider =
    AddOrRemoveProductFromWishlistProvider._();

final class AddOrRemoveProductFromWishlistProvider
    extends $AsyncNotifierProvider<AddOrRemoveProductFromWishlist, void> {
  AddOrRemoveProductFromWishlistProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addOrRemoveProductFromWishlistProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addOrRemoveProductFromWishlistHash();

  @$internal
  @override
  AddOrRemoveProductFromWishlist create() => AddOrRemoveProductFromWishlist();
}

String _$addOrRemoveProductFromWishlistHash() =>
    r'9d97a69afb3333982e2edfe43bde41fa73f01b38';

abstract class _$AddOrRemoveProductFromWishlist extends $AsyncNotifier<void> {
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
