import 'package:e_commerce/feature/profile/domain/entities/user_entity.dart';
import 'package:e_commerce/feature/profile/domain/usecases/get_user_data_usecase.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final getUserDataProvider = Provider.autoDispose<UserEntity>((ref) {
  return ref.watch(getUserDataUseCaseProvider).call();
});
