import 'package:e_commerce/feature/payment/domain/usecases/make_payment_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'make_payment_provider.g.dart';

@riverpod
class MakePayment extends _$MakePayment {
  @override
  FutureOr<void> build() {}

  Future<void> makePayment({required double amount}) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      return await ref.read(makePaymentUseCaseProvider).call(amount);
    });
  }
}
