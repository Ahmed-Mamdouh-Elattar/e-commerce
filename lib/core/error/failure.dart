import 'package:google_sign_in/google_sign_in.dart';

class Failure implements Exception {
  String message;
  Failure({required this.message});
  @override
  String toString() {
    return message;
  }

  factory Failure.fromGoogleSignInException(GoogleSignInException exception) {
    switch (exception.code) {
      case GoogleSignInExceptionCode.unknownError:
        return Failure(message: "Unknown error");
      case GoogleSignInExceptionCode.canceled:
        return Failure(message: "The operation was canceled");
      case GoogleSignInExceptionCode.interrupted:
        return Failure(message: "The operation was interrupted");
      case GoogleSignInExceptionCode.clientConfigurationError:
        return Failure(message: "The client configuration is invalid");
      case GoogleSignInExceptionCode.providerConfigurationError:
        return Failure(message: "The provider configuration is invalid");
      case GoogleSignInExceptionCode.uiUnavailable:
        return Failure(message: "The UI is unavailable");
      case GoogleSignInExceptionCode.userMismatch:
        return Failure(message: "The user is not the same");
    }
  }
}
