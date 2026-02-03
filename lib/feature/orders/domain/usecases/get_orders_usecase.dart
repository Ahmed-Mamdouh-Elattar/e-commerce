import 'package:e_commerce/feature/orders/data/repositories/orders_repo_impl_provider.dart';
import 'package:e_commerce/feature/orders/domain/entities/order_entity.dart';
import 'package:e_commerce/feature/orders/domain/repositories/orders_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GetOrdersUsecase {
  final OrdersRepo _ordersRepo;
  GetOrdersUsecase(this._ordersRepo);
  Future<List<OrderEntity>> call() async {
    return _ordersRepo.getOrders();
  }
}

final getOrdersUsecaseProvider = Provider<GetOrdersUsecase>((ref) {
  return GetOrdersUsecase(ref.read(ordersRepoImplProvider));
});
