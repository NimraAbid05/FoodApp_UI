import 'package:flutter/material.dart';
import 'package:pactice_work/views/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Login_View(),
     debugShowCheckedModeBanner: false,
    );
  }
}
