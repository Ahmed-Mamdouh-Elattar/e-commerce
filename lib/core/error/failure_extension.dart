import 'package:e_commerce/core/error/failure.dart';

extension ObjectExtension on Object {
  String get errorMessage {
    final error = this;
    if (error is Failure) {
      return error.message;
    } else if (error is String) {
      return error;
    }
    return "An unexpected error occurred. Please try again.";
  }
}
