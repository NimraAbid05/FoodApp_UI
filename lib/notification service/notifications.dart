import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  //instance of notification
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  //configuration
   AndroidInitializationSettings _androidInitializationSettings =
      AndroidInitializationSettings('bell');
  //function
  void initializeNotification() async {
    //pass android initialization
    InitializationSettings initializationSettings =
        InitializationSettings(android: _androidInitializationSettings);
    await _flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  //send notification function
  Future<void> sendnotification(String title, String body) async {
    //instances
   var androidNotificationDetails =
        AndroidNotificationDetails('channelId', 'channelName',
            importance: Importance.high, priority: Priority.high);
    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
    );
    await _flutterLocalNotificationsPlugin.show(
        10, title, body, notificationDetails);
  }
}
