import 'package:flutter/material.dart';
import 'package:park_connect/src/constants/color.dart';

class CustomTextField extends StatelessWidget {
  final IconData? prefixIcon;
  final String hintText;
  final double width;
  final Color color;

  const CustomTextField(
      {Key? key,
      this.prefixIcon,
      required this.hintText,
      required this.width,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        border: Border.all(
          color: color,
          width: 1.0,
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: AppColors.textFieldHint),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          border: InputBorder.none,
          prefixIcon: prefixIcon != null
              ? Icon(
                  prefixIcon,
                  size: 20,
                  color: AppColors.textFieldHint,
                )
              : null,
        ),
        cursorColor: AppColors.textFieldBorder,
        cursorHeight: 23,
      ),
    );
  }
}
