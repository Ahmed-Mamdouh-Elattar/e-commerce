import 'package:e_commerce/feature/cart/domain/entities/cart_entitity.dart';
import 'package:e_commerce/feature/cart/domain/usecases/get_cart_product_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final getCartProductsProvider = FutureProvider.autoDispose<List<CartEntity>>((
  ref,
) async {
  final getCartProductUseCase = ref.read(getCartProductUseCaseProvider);
  return await getCartProductUseCase.call();
});
