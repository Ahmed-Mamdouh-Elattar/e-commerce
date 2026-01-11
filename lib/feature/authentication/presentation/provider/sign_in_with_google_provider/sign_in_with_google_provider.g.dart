// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_with_google_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SignInWithGoogle)
final signInWithGoogleProvider = SignInWithGoogleProvider._();

final class SignInWithGoogleProvider
    extends $AsyncNotifierProvider<SignInWithGoogle, void> {
  SignInWithGoogleProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signInWithGoogleProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signInWithGoogleHash();

  @$internal
  @override
  SignInWithGoogle create() => SignInWithGoogle();
}

String _$signInWithGoogleHash() => r'872d2a9e9c570008d36afc5508636094334c2514';

abstract class _$SignInWithGoogle extends $AsyncNotifier<void> {
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
