import 'package:e_commerce/core/entities/user_address_entity.dart';
import 'package:e_commerce/feature/orders/domain/usecases/get_order_address_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final getOrderAddressProvider = FutureProvider.autoDispose
    .family<UserAddressEntity, String>((ref, addressId) async {
      final usecase = ref.watch(getOrderAddressUseCaseProvider);
      return await usecase.call(addressId);
    });
