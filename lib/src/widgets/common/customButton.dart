// button.dart
import 'package:flutter/material.dart';
import 'package:park_connect/src/constants/color.dart';

class CustomButton extends StatelessWidget {
  final String hintText;
  const CustomButton({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Container(
            height: 56,
            width: screenWidth * 0.9,
            decoration: BoxDecoration(
              color: AppColors.buttonBackground,
              borderRadius: BorderRadius.circular(100),
            ),
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      hintText,
                      style: const TextStyle(
                          color: AppColors.whiteBackground,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    minimumSize: const Size(40, 40),
                    elevation: 10,
                    backgroundColor: AppColors.whiteBackground,
                    padding: EdgeInsets.all(5),
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    size: 25,
                    color: AppColors.arrowIcon,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
