import 'package:e_commerce/core/providers/connectivity_provider/connectivity_provider.dart';
import 'package:e_commerce/feature/payment/data/datasources/payment_remote_data_source_provider.dart';
import 'package:e_commerce/feature/payment/data/repositories/payment_repo_impl.dart';
import 'package:e_commerce/feature/payment/domain/repositories/payment_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final paymentRepoImplProvider = Provider<PaymentRepo>(
  (ref) => PaymentRepoImpl(
    ref.read(paymentRemoteDataSourceProvider),
    ref.read(connectivityProvider),
  ),
);
