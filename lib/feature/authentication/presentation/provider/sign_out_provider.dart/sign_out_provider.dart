import 'dart:async';

import 'package:e_commerce/feature/authentication/domain/usecases/sign_out_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'sign_out_provider.g.dart';

@riverpod
class SignOut extends _$SignOut {
  @override
  FutureOr<void> build() {}

  Future<void> signOut() async {
    final signOutUsecase = ref.read(signOutUsecaseProvider);
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      await signOutUsecase.call();
    });
  }
}
