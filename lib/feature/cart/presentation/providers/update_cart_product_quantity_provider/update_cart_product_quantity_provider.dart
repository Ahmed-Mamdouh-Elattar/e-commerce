import 'package:e_commerce/feature/cart/domain/entities/cart_entitity.dart';
import 'package:e_commerce/feature/cart/domain/usecases/update_cart_product_quantity_usecase.dart';
import 'package:e_commerce/feature/cart/presentation/providers/get_cart_total_price_provider.dart/get_cart_total_price_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'update_cart_product_quantity_provider.g.dart';

@riverpod
class UpdateCartProductQuantity extends _$UpdateCartProductQuantity {
  @override
  FutureOr<void> build() {}

  Future<void> updateCartProductQuantity(CartEntity cartProduct) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final updateCartProductQuantityUseCase = ref.read(
        updateCartProductQuantityUseCaseProvider,
      );
      await updateCartProductQuantityUseCase.call(cartProduct);
    });
    ref.invalidate(getCartTotalPriceProvider);
  }
}
