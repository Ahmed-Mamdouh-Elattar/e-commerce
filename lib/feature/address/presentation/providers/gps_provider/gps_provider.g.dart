// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gps_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Gps)
final gpsProvider = GpsProvider._();

final class GpsProvider extends $AsyncNotifierProvider<Gps, GpsModel?> {
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

String _$gpsHash() => r'338eda09095577a4eaba0c4378bf6469d4515e7f';

abstract class _$Gps extends $AsyncNotifier<GpsModel?> {
  FutureOr<GpsModel?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<GpsModel?>, GpsModel?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<GpsModel?>, GpsModel?>,
              AsyncValue<GpsModel?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
