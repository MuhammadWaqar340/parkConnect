import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:park_connect/src/constants/color.dart';
import 'package:park_connect/src/widgets/common/customButton.dart';
import 'package:park_connect/src/widgets/common/customInputField.dart';
import 'package:park_connect/src/widgets/common/customPasswordFiled.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isChecked = false;

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
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: kToolbarHeight + MediaQuery.of(context).padding.top,
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    leading: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      iconSize: 22,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    title: const Text(
                      'Signup',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.0),
                      topRight: Radius.circular(35.0),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          'Sign up to get started!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            color: AppColors.arrowIcon,
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: CustomTextField(
                                  hintText: 'First Name',
                                  width: 150,
                                  color: AppColors.textFieldHint),
                            ),
                            SizedBox(width: 15),
                            Expanded(
                              child: CustomTextField(
                                  hintText: 'Surname',
                                  width: 150,
                                  color: AppColors.textFieldHint),
                            ),
                          ],
                        ),
                        const SizedBox(height: 25),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const CustomTextField(
                              prefixIcon: Icons.email,
                              hintText: 'Your Email',
                              color: AppColors.textFieldHint,
                              width: 327,
                            ),
                            const SizedBox(height: 25),
                            const CustomTextField(
                              prefixIcon: Icons.phone,
                              hintText: 'Your Phone Number',
                              color: AppColors.textFieldHint,
                              width: 327,
                            ),
                            const SizedBox(height: 25),
                            const CustomPasswordField(
                              color: AppColors.textFieldHint,
                              hintText: 'Create Password',
                            ),
                            const SizedBox(height: 25),
                            const CustomPasswordField(
                              color: AppColors.textFieldHint,
                              hintText: 'Confirm Password',
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                Checkbox(
                                    value: _isChecked,
                                    onChanged: (value) {
                                      setState(() {
                                        _isChecked = value!;
                                      });
                                    },
                                    activeColor: AppColors.buttonBackground),
                                Flexible(
                                  child: RichText(
                                    overflow: TextOverflow.clip,
                                    text: TextSpan(
                                      style: const TextStyle(
                                        fontSize: 15,
                                        color: AppColors.textFieldHint,
                                      ),
                                      children: [
                                        const TextSpan(
                                          text:
                                              'I have read and agree with the ',
                                        ),
                                        TextSpan(
                                          text: 'Terms of Service',
                                          style: const TextStyle(
                                            color: AppColors.arrowIcon,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {},
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 75),
                            const CustomButton(hintText: 'Signup'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
