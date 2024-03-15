import 'package:flutter/material.dart';
import 'package:park_connect/src/constants/color.dart';

class CustomTextField extends StatelessWidget {
  final IconData prefixIcon;
  final String hintText;

  const CustomTextField(
      {Key? key, required this.prefixIcon, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        border: Border.all(
          color: AppColors.textFieldBorder,
          width: 1.0,
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText ?? 'Enter text...', // Use provided hint or default
          hintStyle: TextStyle(color: AppColors.textFieldHint),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          border: InputBorder.none,
          prefixIcon: prefixIcon != null
              ? Icon(
                  prefixIcon,
                  size: 25,
                  color: AppColors.textFieldHint,
                )
              : null,
        ),
      ),
    );
  }
}
