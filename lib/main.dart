import 'package:flutter/material.dart';
import 'package:park_connect/src/screens/login.dart';
import 'package:park_connect/src/widgets/common/customButton.dart';
import 'package:park_connect/src/widgets/common/customInputField.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ParkConnect',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Login(), // Removed semicolon here
        ),
      ),
    );
  }
}
