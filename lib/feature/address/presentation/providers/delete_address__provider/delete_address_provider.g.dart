// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_address_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DeleteAddressProvider)
final deleteAddressProviderProvider = DeleteAddressProviderProvider._();

final class DeleteAddressProviderProvider
    extends $AsyncNotifierProvider<DeleteAddressProvider, void> {
  DeleteAddressProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deleteAddressProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deleteAddressProviderHash();

  @$internal
  @override
  DeleteAddressProvider create() => DeleteAddressProvider();
}

String _$deleteAddressProviderHash() =>
    r'5027f20bb88715a1222de581b33be92843a560c2';

abstract class _$DeleteAddressProvider extends $AsyncNotifier<void> {
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
