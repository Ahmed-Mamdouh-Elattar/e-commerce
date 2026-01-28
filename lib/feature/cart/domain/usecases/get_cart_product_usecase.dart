import 'package:e_commerce/feature/cart/data/repositories/cart_repo_impl_provider.dart';
import 'package:e_commerce/feature/cart/domain/entities/cart_entitity.dart';
import 'package:e_commerce/feature/cart/domain/repositories/cart_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GetCartProductUseCase {
  final CartRepo _cartRepo;
  GetCartProductUseCase(this._cartRepo);
  Future<List<CartEntity>> call() async {
    return await _cartRepo.getCartProducts();
  }
}

final getCartProductUseCaseProvider = Provider<GetCartProductUseCase>((ref) {
  return GetCartProductUseCase(ref.read(cartRepoImplProvider));
});
