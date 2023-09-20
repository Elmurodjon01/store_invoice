


import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Notice {
  static Future initialize (FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin)async {
    var androidInitialize =  AndroidInitializationSettings('mipmap/ic_launcher');
    var initializationSettings = InitializationSettings(android: androidInitialize);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }
}