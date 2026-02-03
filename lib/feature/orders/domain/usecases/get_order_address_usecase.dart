import 'package:e_commerce/core/entities/user_address_entity.dart';
import 'package:e_commerce/feature/orders/data/repositories/orders_repo_impl_provider.dart';
import 'package:e_commerce/feature/orders/domain/repositories/orders_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GetOrderAddressUsecase {
  final OrdersRepo _ordersRepo;
  GetOrderAddressUsecase(this._ordersRepo);

  Future<UserAddressEntity> call(String addressId) async {
    return await _ordersRepo.getOrderAddress(addressId);
  }
}

final getOrderAddressUseCaseProvider = Provider<GetOrderAddressUsecase>((ref) {
  final ordersRepo = ref.watch(ordersRepoImplProvider);
  return GetOrderAddressUsecase(ordersRepo);
});
