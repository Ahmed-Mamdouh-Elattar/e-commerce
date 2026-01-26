// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_profile_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(UpdateUserProfile)
final updateUserProfileProvider = UpdateUserProfileProvider._();

final class UpdateUserProfileProvider
    extends $AsyncNotifierProvider<UpdateUserProfile, void> {
  UpdateUserProfileProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'updateUserProfileProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$updateUserProfileHash();

  @$internal
  @override
  UpdateUserProfile create() => UpdateUserProfile();
}

String _$updateUserProfileHash() => r'5153e7f967df480c96dba1ebd137dc80ec5513d6';

abstract class _$UpdateUserProfile extends $AsyncNotifier<void> {
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
