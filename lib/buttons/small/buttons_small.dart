// // ignore_for_file: avoid_classes_with_only_static_members

// import 'package:design_system/typography/typography.dart';
// import 'package:flutter/material.dart';

// class ButtonThemeSmall {
//   static ElevatedButtonThemeData elevated(){
//    return ElevatedButtonThemeData(
//       style: ButtonStyle(
//         // shape:
//         //     MaterialStateProperty.all<OutlinedBorder>(const CircleBorder()),
//         textStyle: MaterialStateProperty.all<TextStyle>(
//             MayJuunType.label2),
//         foregroundColor: MaterialStateProperty.all<Color>(AppColors.white),
//         backgroundColor: MaterialStateProperty.all<Color>(AppColors.red),
//         overlayColor: MaterialStateProperty.resolveWith<Color?>(
//           (Set<MaterialState> states) {
//             if (states.contains(MaterialState.hovered)) {
//               return AppColors.white.withOpacity(0.04);
//             }
//             if (states.contains(MaterialState.focused) ||
//                 states.contains(MaterialState.pressed)) {
//               return AppColors.white.withOpacity(0.12);
//             } else {
//               return null;
//             } // Defer to the widget's default.
//           },
//         ),
//       ),
//     );
//   }
// }