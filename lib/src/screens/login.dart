import 'package:flutter/material.dart';
import 'package:park_connect/src/constants/color.dart';
import 'package:park_connect/src/widgets/common/customButton.dart';
import 'package:park_connect/src/widgets/common/customInputField.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: AppColors.backgroundColor,
        elevation:
            0, // Set elevation to 0 to make app bar blend with the background
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // This will pop the current route
          },
        ),
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                color: Colors.white,
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Login to your account',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 25),
                    CustomTextField(
                        prefixIcon: Icons.email, hintText: 'hello@gmail.com'),
                    SizedBox(height: 25),
                    CustomTextField(
                        prefixIcon: Icons.key, hintText: 'hello@gmail.com'),
                    SizedBox(height: 25),
                    Text(
                      'Forgot Password?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 25),
                    CustomButton(hintText: 'Login'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
