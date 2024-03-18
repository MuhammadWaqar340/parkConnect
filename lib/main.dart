import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:park_connect/src/screens/login.dart';
import 'package:park_connect/src/screens/see.dart';
import 'package:park_connect/src/screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness:
          Brightness.dark, // Change to Brightness.light for dark icons
    ));
    return MaterialApp(
      title: 'ParkConnect',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Login(),
        ),
      ),
    );
  }
}
