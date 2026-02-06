// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_switching_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ThemeSwitching)
final themeSwitchingProvider = ThemeSwitchingProvider._();

final class ThemeSwitchingProvider
    extends $NotifierProvider<ThemeSwitching, ThemeMode> {
  ThemeSwitchingProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'themeSwitchingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$themeSwitchingHash();

  @$internal
  @override
  ThemeSwitching create() => ThemeSwitching();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeMode value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeMode>(value),
    );
  }
}

String _$themeSwitchingHash() => r'cc2c401899ce92626e345c7cc3821c2fa59bbe3e';

abstract class _$ThemeSwitching extends $Notifier<ThemeMode> {
  ThemeMode build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<ThemeMode, ThemeMode>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ThemeMode, ThemeMode>,
              ThemeMode,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
