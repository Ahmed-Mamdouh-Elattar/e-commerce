// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_user_address_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AddUserAddress)
final addUserAddressProvider = AddUserAddressProvider._();

final class AddUserAddressProvider
    extends $AsyncNotifierProvider<AddUserAddress, void> {
  AddUserAddressProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'addUserAddressProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$addUserAddressHash();

  @$internal
  @override
  AddUserAddress create() => AddUserAddress();
}

String _$addUserAddressHash() => r'76a6c65cdd15d42d47d794f6540b097a63a7ef9d';

abstract class _$AddUserAddress extends $AsyncNotifier<void> {
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
