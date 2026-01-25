import 'package:e_commerce/feature/profile/data/repositories/profile_repo_impl_provider.dart';
import 'package:e_commerce/feature/profile/domain/entities/user_entity.dart';
import 'package:e_commerce/feature/profile/domain/repositories/profile_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GetUserDataUseCase {
  final ProfileRepo _profileRepo;

  GetUserDataUseCase(ProfileRepo profileRepo) : _profileRepo = profileRepo;

  UserEntity call() {
    return _profileRepo.getUserData();
  }
}

final getUserDataUseCaseProvider = Provider<GetUserDataUseCase>(
  (ref) => GetUserDataUseCase(ref.read(profileRepoImplProvider)),
);
