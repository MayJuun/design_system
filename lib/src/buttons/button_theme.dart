// ignore_for_file: avoid_classes_with_only_static_members

import 'package:mayjuun_design_system/src/typography/typography.dart';
import 'package:mayjuun_design_system/src/colors/color_labels.dart';
import 'package:flutter/material.dart';

class MayJuunButtonTheme {
  ///This method should be used for your app's internal theme where you want to
  ///have more flexiblity over your elevated button.
  ///Subsequently, you can call ```ButtonSmall.elevatedButtonComponent()```, ```ButtonMedium.elevatedButtonComponent()```,
  /// or ```ButtonLarge.elevatedButtonComponent()``` to have the desired and pre-fedefined button size
  static ElevatedButtonThemeData elevatedButtonTheme(
      {Color? buttonColor, TextStyle? textStyle}) {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        mouseCursor:
            MaterialStateProperty.all<MouseCursor>(SystemMouseCursors.click),
        enableFeedback: true,
        // shape: MaterialStateProperty.all<OutlinedBorder>(const CircleBorder()),
        textStyle: MaterialStateProperty.all<TextStyle>(
            textStyle ?? MayJuunType.label3()),
        foregroundColor:
            MaterialStateProperty.all<Color>(LightThemeColors.contentPrimary),
        backgroundColor: MaterialStateProperty.all<Color>(
            buttonColor ?? LightThemeColors.backgroundPositive),
        overlayColor: MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return Colors.white.withOpacity(0.04);
            }
            if (states.contains(MaterialState.focused) ||
                states.contains(MaterialState.pressed)) {
              return Colors.purple.withOpacity(0.12);
            } else {
              return null;
            } // Defer to the widget's default.
          },
        ),
      ),
    );
  }
}
