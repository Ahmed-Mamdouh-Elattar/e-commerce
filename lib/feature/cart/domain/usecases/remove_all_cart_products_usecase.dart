import 'package:e_commerce/feature/cart/data/repositories/cart_repo_impl_provider.dart';
import 'package:e_commerce/feature/cart/domain/repositories/cart_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RemoveAllCartProductsUsecase {
  final CartRepo _cartRepo;
  RemoveAllCartProductsUsecase(this._cartRepo);
  Future<void> call() async {
    return await _cartRepo.removeAllCartProducts();
  }
}

final removeAllCartProductsUsecaseProvider =
    Provider<RemoveAllCartProductsUsecase>(
      (ref) => RemoveAllCartProductsUsecase(ref.read(cartRepoImplProvider)),
    );
