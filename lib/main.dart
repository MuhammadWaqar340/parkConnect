import 'package:flutter/material.dart';
import 'package:park_connect/src/widgets/customButton.dart';

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
          child: CustomButton(
            hintText: 'i am button',
          ),
        ),
      ),
    );
  }
}
