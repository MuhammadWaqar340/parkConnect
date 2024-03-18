// import 'package:flutter/material.dart';
// import 'package:park_connect/src/constants/color.dart';

// class See extends StatelessWidget {
//   const See({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.only(top: 50.0),
//         child: SingleChildScrollView(
//           child: Container(
//             alignment: Alignment.topCenter,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 70.0),
//                   child: SizedBox(
//                     height: 150,
//                     width: 150,
//                     child: Image.asset(
//                       'assets/see_logo.png',
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Container(
//                   width: 270,
//                   child: const Text(
//                     "See what's happening in your area",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.w600,
//                         color: AppColors.arrowIcon),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 const SizedBox(
//                   width: 300,
//                   child: Text(
//                     "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu dapibus.",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.w400,
//                         color: AppColors.textFieldHint),
//                   ),
//                 ),
//                 SizedBox(height: 50), // Adjust the spacing as needed
//                 Expanded(
//                   child: Container(
//                     // Wrap with Container
//                     width: double.infinity, // Ensure full width
//                     child: Image.asset(
//                       'assets/see_image.png', // Provide the path to your image
//                       fit: BoxFit.fitWidth, // Ensure the image fits the width
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
