import 'package:e_commerce/feature/profile/data/repositories/profile_repo_impl_provider.dart';
import 'package:e_commerce/feature/profile/domain/repositories/profile_repo.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class UpdateUserProfileUsecase {
  final ProfileRepo _profileRepo;

  UpdateUserProfileUsecase(this._profileRepo);

  Future<void> call(String name, XFile? image) async {
    final imageBytes = await image?.readAsBytes();
    return await _profileRepo.updateUserData(name, imageBytes);
  }
}

final updateUserProfileUsecaseProvider = Provider<UpdateUserProfileUsecase>(
  (ref) => UpdateUserProfileUsecase(ref.read(profileRepoImplProvider)),
);
