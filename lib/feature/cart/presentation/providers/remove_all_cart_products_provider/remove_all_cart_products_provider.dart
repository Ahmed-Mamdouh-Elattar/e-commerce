import 'package:e_commerce/feature/cart/domain/usecases/remove_all_cart_products_usecase.dart';
import 'package:e_commerce/feature/cart/presentation/providers/get_cart_products_provider/get_cart_products_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'remove_all_cart_products_provider.g.dart';

@riverpod
class RemoveAllCartProducts extends _$RemoveAllCartProducts {
  @override
  FutureOr<void> build() {}

  Future<void> removeAllCartProducts() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final removeAllCartProductsUsecase = ref.read(
        removeAllCartProductsUsecaseProvider,
      );
      await removeAllCartProductsUsecase.call();
    });
    if (state.hasValue) {
      ref.invalidate(getCartProductsProvider);
    }
  }
}
