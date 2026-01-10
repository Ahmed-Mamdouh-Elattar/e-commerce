class PageName {
  static const String splash = '/';
  static const String emailSignIn = '/email-sign-in';
  static const String passwordSignInPath = "password-sign-in";
  static const String passwordSignIn = '$emailSignIn/$passwordSignInPath';
  static const String updatePasswordPath = "update-password";
  static const String updatePassword =
      '$emailSignIn/$passwordSignInPath/$updatePasswordPath';
  static const String createAccountPath = "create-account";
  static const String createAccount = '$emailSignIn/$createAccountPath';
  static const String authCallbackPath = "auth-callback";
  static const String authCallback = '$emailSignIn/$authCallbackPath';
}
