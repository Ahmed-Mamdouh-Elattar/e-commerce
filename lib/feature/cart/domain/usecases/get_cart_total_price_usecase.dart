import 'package:e_commerce/feature/cart/data/repositories/cart_repo_impl_provider.dart';
import 'package:e_commerce/feature/cart/domain/repositories/cart_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GetCartTotalPriceUseCase {
  final CartRepo _cartRepo;
  GetCartTotalPriceUseCase(this._cartRepo);

  Future<double> call() {
    return _cartRepo.getCartTotalPrice();
  }
}

final getCartTotalPriceUseCaseProvider = Provider<GetCartTotalPriceUseCase>(
  (ref) => GetCartTotalPriceUseCase(ref.read(cartRepoImplProvider)),
);
