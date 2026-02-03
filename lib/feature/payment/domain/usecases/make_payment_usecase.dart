import 'package:e_commerce/feature/payment/data/repositories/payment_repo_impl_provider.dart';
import 'package:e_commerce/feature/payment/domain/repositories/payment_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MakePaymentUseCase {
  final PaymentRepo _paymentRepo;
  MakePaymentUseCase(this._paymentRepo);
  Future<void> call(double amount) {
    return _paymentRepo.makePayment(amount: amount);
  }
}

final makePaymentUseCaseProvider = Provider<MakePaymentUseCase>(
  (ref) => MakePaymentUseCase(ref.read(paymentRepoImplProvider)),
);
