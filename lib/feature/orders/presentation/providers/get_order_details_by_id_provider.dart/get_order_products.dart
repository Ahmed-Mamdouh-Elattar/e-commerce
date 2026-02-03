import 'package:e_commerce/feature/orders/domain/entities/order_item_entity.dart';
import 'package:e_commerce/feature/orders/domain/usecases/get_order_products_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final getOrderProductsProvider = FutureProvider.family
    .autoDispose<List<OrderItemEntity>, String>((ref, orderId) {
      return ref.watch(getOrderProductsUseCaseProvider).call(orderId);
    });
