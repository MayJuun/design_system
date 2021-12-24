// ignore_for_file: avoid_classes_with_only_static_members

import 'package:design_system/colors/colors.dart';
import 'package:design_system/typography/typography.dart';
import 'package:design_system/utils/consts.dart';
import 'package:flutter/material.dart';

class ButtonSmall {
  static ElevatedButtonThemeData elevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(
          const Size(350, 36),
        ),

        mouseCursor:
            MaterialStateProperty.all<MouseCursor>(SystemMouseCursors.click),

        enableFeedback: true,
        // shape: MaterialStateProperty.all<OutlinedBorder>(const CircleBorder()),
        textStyle: MaterialStateProperty.all<TextStyle>(MayJuunType.label3()),
        foregroundColor:
            MaterialStateProperty.all<Color>(LightThemeColors.contentPrimary),
        backgroundColor: MaterialStateProperty.all<Color>(
            LightThemeColors.backgroundPositive),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.white.withOpacity(0.04);
            }
            if (states.contains(MaterialState.focused) ||
                states.contains(MaterialState.pressed)) {
              return Colors.white.withOpacity(0.12);
            } else {
              return null;
            } // Defer to the widget's default.
          },
        ),
      ),
    );
  }

  static ElevatedButton elevatedButtonComponent() {
    return ElevatedButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.lock, size: 15),
            SpaceConsts.horizontalOne,
            const Text('Press me')
          ],
        ));
  }
}
