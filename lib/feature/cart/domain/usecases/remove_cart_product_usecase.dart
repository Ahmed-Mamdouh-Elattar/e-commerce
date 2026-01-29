import 'package:e_commerce/feature/cart/data/repositories/cart_repo_impl_provider.dart';
import 'package:e_commerce/feature/cart/domain/repositories/cart_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RemoveCartProductUsecase {
  final CartRepo _cartRepo;
  RemoveCartProductUsecase(this._cartRepo);

  Future<void> call(String cartProductId) async {
    return _cartRepo.removeCartProduct(cartProductId);
  }
}

final removeCartProductUseCaseProvider = Provider<RemoveCartProductUsecase>((
  ref,
) {
  return RemoveCartProductUsecase(ref.read(cartRepoImplProvider));
});
