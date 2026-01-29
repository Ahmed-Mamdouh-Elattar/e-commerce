import 'package:e_commerce/feature/cart/domain/usecases/remove_cart_product_usecase.dart';
import 'package:e_commerce/feature/cart/presentation/providers/get_cart_products_provider/get_cart_products_provider.dart';
import 'package:e_commerce/feature/cart/presentation/providers/get_cart_total_price_provider.dart/get_cart_total_price_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'remove_cart_product_provider.g.dart';

@riverpod
class RemoveCartProduct extends _$RemoveCartProduct {
  @override
  FutureOr<void> build() {}

  Future<void> removeCartProduct(String cartProductId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(removeCartProductUseCaseProvider).call(cartProductId),
    );
    ref.invalidate(getCartProductsProvider);
    ref.invalidate(getCartTotalPriceProvider);
  }
}
