import 'package:flutter/material.dart';
import 'package:pactice_work/notification%20service/notifications.dart';
import 'package:pactice_work/views/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    final NotificationService notificationService = NotificationService();
 
  void initState() {
    super.initState();
    notificationService.initializeNotification();
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Login_View(),
     debugShowCheckedModeBanner: false,
    );
  }
}
