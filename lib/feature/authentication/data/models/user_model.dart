class UserModel {
  final String email;
  final String password;
  final String? firstName;
  final String? lastName;

  UserModel({
    required this.email,
    required this.password,
    this.firstName,
    this.lastName,
  });
}
