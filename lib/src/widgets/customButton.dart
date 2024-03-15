// button.dart
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String hintText;
  const CustomButton({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Container(
            height: 60,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: Color.fromARGB(255, 42, 10, 77)),
            ),
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (text) {},
                    cursorColor: Colors.amber,
                    decoration: InputDecoration(
                      hintText: hintText,
                      hintStyle: TextStyle(color: Colors.grey.shade600),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 12),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    minimumSize: const Size(40, 40),
                    elevation: 10,
                    backgroundColor: Colors.amber,
                    padding: EdgeInsets.all(10),
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    size: 30,
                    color: Colors.white,
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
