import 'dart:typed_data';

import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/feature/profile/data/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class ProfileRemoteDataSource {
  UserModel getUserData();
  Future<void> updateUserData(String name, Uint8List? image);
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  @override
  UserModel getUserData() {
    final user = Supabase.instance.client.auth.currentUser;
    if (user == null) {
      throw Failure(message: 'User not found');
    }

    return UserModel(
      id: user.id,
      name: user.userMetadata?['name'],
      email: user.email,
      image: user.userMetadata?['avatar_url'],
    );
  }

  @override
  Future<void> updateUserData(String name, Uint8List? image) async {
    String? imageUrl;
    final user = Supabase.instance.client.auth.currentUser;
    if (user == null) {
      throw Failure(message: 'User not found');
    }
    if (image != null) {
      imageUrl = await uploadImageToSupabaseStorage(user, image, imageUrl);
    }

    await Supabase.instance.client.auth.updateUser(
      UserAttributes(
        data: {if (image != null) 'avatar_url': imageUrl, 'name': name},
      ),
    );
  }

  Future<String?> uploadImageToSupabaseStorage(
    User user,
    Uint8List image,
    String? imageUrl,
  ) async {
    final path =
        '${user.id}/avatar_${DateTime.now().millisecondsSinceEpoch}.jpg';

    final List<FileObject> existingFiles = await Supabase
        .instance
        .client
        .storage
        .from('avatars')
        .list(path: user.id);

    if (existingFiles.isNotEmpty) {
      final List<String> filesToDelete = existingFiles
          .map((f) => '${user.id}/${f.name}')
          .toList();
      await Supabase.instance.client.storage
          .from('avatars')
          .remove(filesToDelete);
    }

    await Supabase.instance.client.storage
        .from('avatars')
        .uploadBinary(path, image);
    imageUrl = Supabase.instance.client.storage
        .from('avatars')
        .getPublicUrl(path);
    return imageUrl;
  }
}
