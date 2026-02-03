import 'package:e_commerce/core/services/stripe_service/stripe_service_provider.dart';
import 'package:e_commerce/feature/payment/data/datasources/payment_remote_data_source.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final paymentRemoteDataSourceProvider = Provider<PaymentRemoteDataSource>(
  (ref) => PaymentRemoteDataSourceImpl(ref.read(stripeServiceProvider)),
);
