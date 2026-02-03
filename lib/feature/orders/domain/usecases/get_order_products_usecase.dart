import 'package:e_commerce/feature/orders/data/repositories/orders_repo_impl_provider.dart';
import 'package:e_commerce/feature/orders/domain/entities/order_item_entity.dart';
import 'package:e_commerce/feature/orders/domain/repositories/orders_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GetOrderProductsUseCase {
  final OrdersRepo _repo;
  GetOrderProductsUseCase(this._repo);
  Future<List<OrderItemEntity>> call(String orderId) async {
    return await _repo.getOrderProducts(orderId);
  }
}

final getOrderProductsUseCaseProvider = Provider<GetOrderProductsUseCase>((
  ref,
) {
  return GetOrderProductsUseCase(ref.watch(ordersRepoImplProvider));
});
