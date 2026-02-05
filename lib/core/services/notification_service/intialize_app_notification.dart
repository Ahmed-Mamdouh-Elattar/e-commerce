import 'package:e_commerce/core/services/notification_service/background_notification.dart';
import 'package:e_commerce/core/services/notification_service/notification_service.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

Future<void> intializeAppNotification() async {
  await NotificationService.instance
      .setupFirebaseMessagingAndInitializeLocalNotifications();
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
}
