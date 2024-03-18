import 'package:flutter/material.dart';
import 'package:park_connect/src/constants/color.dart';
import 'package:park_connect/src/widgets/common/customButton.dart';
import 'package:park_connect/src/widgets/common/customInputField.dart';
import 'package:park_connect/src/widgets/common/customPasswordFiled.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned.fill(
            top: -(MediaQuery.of(context).padding.top + kToolbarHeight) * 0.3,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: kToolbarHeight + MediaQuery.of(context).padding.top,
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back),
                    iconSize: 22,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  title: const Text(
                    'Login',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.0),
                      topRight: Radius.circular(35.0),
                    ),
                    color: Colors.white,
                  ),
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'Login to your account',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                              color: AppColors.arrowIcon),
                        ),
                        SizedBox(height: 30),
                        CustomTextField(
                          prefixIcon: Icons.email,
                          hintText: 'hello@gmail.com',
                          color: AppColors.textFieldBorder,
                          width: 327,
                        ),
                        SizedBox(height: 25),
                        CustomPasswordField(
                          color: AppColors.textFieldBorder,
                          visibilityOnIcon: Icons.visibility,
                          visibilityOffIcon: Icons.visibility_off,
                          hintText: 'Your Password',
                        ),
                        SizedBox(height: 12),
                        Text(
                          'Forgot Password?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 45),
                        CustomButton(hintText: 'Login'),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
