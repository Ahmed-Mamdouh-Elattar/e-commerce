import 'package:e_commerce/feature/orders/domain/usecases/get_orders_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:e_commerce/feature/orders/domain/entities/order_entity.dart';

final getOrdersProvider = FutureProvider.autoDispose<List<OrderEntity>>((ref) {
  return ref.watch(getOrdersUsecaseProvider).call();
});
