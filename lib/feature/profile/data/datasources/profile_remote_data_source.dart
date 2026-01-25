import 'package:e_commerce/core/error/failure.dart';
import 'package:e_commerce/feature/profile/data/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class ProfileRemoteDataSource {
  UserModel getUserData();
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
      name:
          "${user.userMetadata?['first_name']} ${user.userMetadata?['last_name']}",
      email: user.email,
      image: user.userMetadata?['avatar_url'],
    );
  }
}
