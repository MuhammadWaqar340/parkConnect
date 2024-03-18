import 'package:flutter/material.dart';
import 'package:park_connect/src/constants/color.dart';

class CustomPasswordField extends StatefulWidget {
  final Color color;
  final IconData? visibilityOnIcon;
  final IconData? visibilityOffIcon;
  final String hintText;

  const CustomPasswordField({
    Key? key,
    required this.color,
    this.visibilityOnIcon,
    this.visibilityOffIcon,
    required this.hintText,
  }) : super(key: key);

  @override
  _CustomPasswordFieldState createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool obscureText = true;

  final IconData prefixIcon = Icons.key_outlined;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        border: Border.all(
          color: widget.color,
          width: 1.0,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              obscureText: obscureText,
              decoration: InputDecoration(
                hintText: widget.hintText,
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
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(
                obscureText
                    ? widget.visibilityOffIcon
                    : widget.visibilityOnIcon,
                size: 20,
                color: AppColors.textFieldHint,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
