import 'package:e_commerce/feature/cart/domain/usecases/get_cart_total_price_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final getCartTotalPriceProvider = FutureProvider.autoDispose<double>((ref) {
  return ref.watch(getCartTotalPriceUseCaseProvider).call();
});
