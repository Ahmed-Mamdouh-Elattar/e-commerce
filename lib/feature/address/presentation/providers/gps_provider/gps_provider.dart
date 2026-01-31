import 'package:e_commerce/core/services/gps_service/gps_model.dart';
import 'package:e_commerce/core/services/gps_service/gps_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'gps_provider.g.dart';

@riverpod
class Gps extends _$Gps {
  @override
  FutureOr<GpsModel?> build() {
    return null;
  }

  Future<void> getCurrentLocation() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final isGranted = await ref.read(gpsServiceProvider).checkGpsPermission();
      if (isGranted) {
        return await ref.read(gpsServiceProvider).getCurrentLocation();
      }
      return null;
    });
  }
}
