class PageName {
  static const String splash = '/';
  static const String emailSignIn = '/email-sign-in';
  static const String passwordSignInPath = "password-sign-in";
  static const String passwordSignIn = '$emailSignIn/$passwordSignInPath';
  static const String updatePasswordPath = "update-password";
  static const String updatePassword = '$emailSignIn/$updatePasswordPath';
  static const String createAccountPath = "create-account";
  static const String createAccount = '$emailSignIn/$createAccountPath';
  static const String authCallbackPath = "auth-callback";
  static const String authCallback = '$emailSignIn/$authCallbackPath';
  static const String home = '/home';
  static const String shopByCategoryPath = 'shop-by-category';
  static const String shopByCategory = '$home/$shopByCategoryPath';
  static const String categoryProductsPath = 'category-products';
  static const String categoryProducts = '$home/$categoryProductsPath';
  static const String productPath = 'product';
  static const String product = '$home/$productPath';
  static const String search = '/search';
  static const String profile = '/profile';
  static const String wishlist = '$profile/wishlist';
  static const String updateProfile = '$profile/update-profile';
}
