// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_default_address_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ChangeDefaultAddressNotifier)
final changeDefaultAddressProvider = ChangeDefaultAddressNotifierProvider._();

final class ChangeDefaultAddressNotifierProvider
    extends $AsyncNotifierProvider<ChangeDefaultAddressNotifier, void> {
  ChangeDefaultAddressNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'changeDefaultAddressProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$changeDefaultAddressNotifierHash();

  @$internal
  @override
  ChangeDefaultAddressNotifier create() => ChangeDefaultAddressNotifier();
}

String _$changeDefaultAddressNotifierHash() =>
    r'2f8a17d497f4850c7b27bd2fba1d7ebde5cd601a';

abstract class _$ChangeDefaultAddressNotifier extends $AsyncNotifier<void> {
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
