import 'package:e_commerce/core/services/stripe_service/stripe_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final stripeServiceProvider = Provider<StripeService>((ref) => StripeService());
