import 'dart:async';

import 'package:e_commerce/core/routing/app_router.dart';
import 'package:e_commerce/core/routing/page_name.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:go_router/go_router.dart';

class NotificationService {
  NotificationService._();
  static final NotificationService instance = NotificationService._();

  final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> setupFirebaseMessagingAndInitializeLocalNotifications() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      await FirebaseMessaging.instance.subscribeToTopic("all_users");
    }

    await initializeLocalNotifications();
    listenToOnMessageApp();
    listenToOnMessageOpenedApp();
  }

  Future<void> initializeLocalNotifications() async {
    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const InitializationSettings initializationSettings =
        InitializationSettings(android: initializationSettingsAndroid);

    await _notificationsPlugin.initialize(
      settings: initializationSettings,
      onDidReceiveNotificationResponse: (NotificationResponse response) {
        final context = rootNavigatorKey.currentContext;
        if (context != null) {
          GoRouter.of(context).go(PageName.notification);
        }
      },
    );
  }

  void showNotificationOnForeground(String title, String body) {
    const AndroidNotificationDetails androidDetail = AndroidNotificationDetails(
      'high_importance_channel',
      'High Importance Notifications',
      importance: Importance.max,
      priority: Priority.high,
      icon: '@mipmap/ic_launcher',
    );

    const NotificationDetails noticeDetail = NotificationDetails(
      android: androidDetail,
    );

    _notificationsPlugin.show(
      id: DateTime.now().millisecond,
      title: title,
      body: body,
      notificationDetails: noticeDetail,
    );
  }

  void listenToOnMessageApp() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (message.notification != null) {
        showNotificationOnForeground(
          message.notification!.title ?? '',
          message.notification!.body ?? '',
        );
      }
    });
  }

  void listenToOnMessageOpenedApp() {
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      if (message.notification != null) {
        final context = rootNavigatorKey.currentContext;
        if (context != null && context.mounted) {
          GoRouter.of(context).go(PageName.notification);
        }
      }
    });
  }
}
