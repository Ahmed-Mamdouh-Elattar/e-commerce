import 'dart:typed_data';

import 'package:e_commerce/feature/profile/domain/entities/user_entity.dart';

abstract class ProfileRepo {
  UserEntity getUserData();
  Future<void> updateUserData(String name, Uint8List? image);
}
