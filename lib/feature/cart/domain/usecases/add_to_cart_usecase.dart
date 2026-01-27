import 'package:e_commerce/feature/cart/data/repositories/cart_repo_impl_provider.dart';
import 'package:e_commerce/feature/cart/domain/entities/cart_entitity.dart';
import 'package:e_commerce/feature/cart/domain/repositories/cart_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddToCartUsecase {
  final CartRepo _cartRepo;
  AddToCartUsecase(this._cartRepo);
  Future<void> call(CartEntity productCart) async {
    return await _cartRepo.addToCart(productCart);
  }
}

final addToCartUseCaseProvider = Provider<AddToCartUsecase>((ref) {
  return AddToCartUsecase(ref.read(cartRepoImplProvider));
});
