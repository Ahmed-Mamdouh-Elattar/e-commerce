import 'package:e_commerce/feature/address/domain/entities/user_address_entity.dart';
import 'package:e_commerce/feature/address/domain/usecases/get_user_addresses_usecase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart' show FutureProvider;

final getUserAddressesProvider =
    FutureProvider.autoDispose<List<UserAddressEntity>>((ref) async {
      return await ref.watch(getUserAddressesUsecaseProvider).call();
    });
