import 'package:flutter/material.dart';

// class ButtonSmall {
//   static ElevatedButtonThemeData elevated(){
//    return ElevatedButtonThemeData(
//       style: ButtonStyle(
//         // shape:
//         //     MaterialStateProperty.all<OutlinedBorder>(const CircleBorder()),
//         textStyle: MaterialStateProperty.all<TextStyle>(
//             _buildTextTheme().button!.apply(fontSizeFactor: 1.2)),
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