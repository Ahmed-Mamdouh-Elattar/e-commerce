import 'package:firebase_messaging/firebase_messaging.dart';

Future<bool> checkIfTheApplicationWasOpenedFromNotification() async {
  RemoteMessage? initialMessage = await FirebaseMessaging.instance
      .getInitialMessage();

  if (initialMessage != null) {
    return true;
  }
  return false;
}
