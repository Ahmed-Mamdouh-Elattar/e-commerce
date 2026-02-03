import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/feature/payment/data/datasources/payment_remote_data_source.dart';
import 'package:e_commerce/feature/payment/domain/repositories/payment_repo.dart';

class PaymentRepoImpl implements PaymentRepo {
  final PaymentRemoteDataSource _paymentRemoteDataSource;
  final Connectivity _connectivity;
  PaymentRepoImpl(this._paymentRemoteDataSource, this._connectivity);
  @override
  Future<void> makePayment({required double amount}) async {
    final result = await _connectivity.checkConnectivity();
    if (result.contains(ConnectivityResult.none)) {
      throw Failure(message: "No Internet Connection");
    }
    return _paymentRemoteDataSource.makePayment(amount: amount);
  }
}
