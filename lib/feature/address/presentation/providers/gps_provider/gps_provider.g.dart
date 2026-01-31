// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gps_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Gps)
final gpsProvider = GpsProvider._();

final class GpsProvider extends $AsyncNotifierProvider<Gps, Placemark?> {
  GpsProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'gpsProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$gpsHash();

  @$internal
  @override
  Gps create() => Gps();
}

String _$gpsHash() => r'd3c96e2fd0571a1126102a202a0ca7e49b574e26';

abstract class _$Gps extends $AsyncNotifier<Placemark?> {
  FutureOr<Placemark?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<Placemark?>, Placemark?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Placemark?>, Placemark?>,
              AsyncValue<Placemark?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
