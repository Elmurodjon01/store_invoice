




import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:go_router/go_router.dart';
import 'package:pizza_planet/src/logic/go_router.dart';
// import 'package:timezone/timezone.dart' as tz;
// import 'package:timezone/data/latest.dart' as tz;
//use above packages later to add scheduled notifications




class Notice {
  static Future initialize (FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin, Function(NotificationResponse)?  onDidReceiveNotificationRes)async {
    var androidInitialize =  AndroidInitializationSettings('mipmap/ic_launcher');
    var initializationSettings = InitializationSettings(android: androidInitialize);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings, onDidReceiveNotificationResponse: onDidReceiveNotificationRes);


    var messageString = "";
  FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
    RemoteNotification? notification = message.notification;

    if (notification != null) {
      FlutterLocalNotificationsPlugin().show(
      
        notification.hashCode,
        notification.title,
        notification.body,
        
        const NotificationDetails(
        
          android: AndroidNotificationDetails(
          
            'high_importance_channel',
            'high_importance_notification',
            importance: Importance.max,
            
          ),
          
        ),
      
      );
      messageString = message.notification!.body!;
      print("Foreground 메시지 수신: $messageString");

    }
  });
  flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<
    AndroidFlutterLocalNotificationsPlugin>()?.requestPermission();
  await FirebaseMessaging.instance.subscribeToTopic('NOTIFY');
    
  }
void onNotificationLIstener (String? payload, BuildContext context){
  if (payload != null && payload.isNotEmpty){
    print('payload is not empty $payload');
    context.pushNamed(Screens.notificationsPage.name,
    queryParameters: {
      'payload' : payload
    }
  );
  }
}
  // Future<void> showScheduledNotification({
  //   required int id,
  //   required String title,
  //   required String body,
  //   required int seconds 
  // }) async {
  //   final detail = await NotificationDetails();
  // }
}