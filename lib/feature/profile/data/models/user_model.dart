import 'package:e_commerce/feature/profile/domain/entities/user_entity.dart';

class UserModel {
  final String id;
  final String? name;
  final String? email;
  final String? image;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.image,
  });

  UserEntity toUserEntity() {
    return UserEntity(id: id, name: name, email: email, image: image);
  }
}
