import 'package:e_commerce/feature/cart/data/repositories/cart_repo_impl_provider.dart';
import 'package:e_commerce/feature/cart/domain/entities/cart_entitity.dart';
import 'package:e_commerce/feature/cart/domain/repositories/cart_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UpdateCartProductQuantityUseCase {
  final CartRepo _cartRepo;
  UpdateCartProductQuantityUseCase(this._cartRepo);

  Future<void> call(CartEntity cartProduct) async {
    return await _cartRepo.updateCartProductQuantity(cartProduct);
  }
}

final updateCartProductQuantityUseCaseProvider =
    Provider<UpdateCartProductQuantityUseCase>((ref) {
      return UpdateCartProductQuantityUseCase(ref.read(cartRepoImplProvider));
    });
