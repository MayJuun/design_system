// ignore_for_file: prefer_const_constructors, avoid_classes_with_only_static_members

import 'package:flutter/material.dart';
import 'package:mayjuun_design_system/mayjuun_design_system.dart';

class FormInputTheme {
  //params enabled color, focused Color, form themeMode,
  static InputDecorationTheme outlineFormTheme(
      {required Color enabledColor,
      required Color focusedColor,
      required ThemeModeType themeMode}) {
    return InputDecorationTheme(
        //General Border Color
        border: OutlineInputBorder(
          borderSide: BorderSide(
              color: themeMode == ThemeModeType.lightTheme
                  ? LightThemeColors.enabledBorder
                  : DarkThemeColors.enabledBorder),
        ),

        //Enabled Border Color
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: enabledColor,
          ),
        ),

        //Focused Border Color
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: focusedColor,
          ),
        ),

        //Error Border
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: LightThemeColors.negative,
          ),
        ),

        //Focused ErorrBorder
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),

        //Disabled Border
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: LightThemeColors.disabledBorder,
          ),
        ),
        labelStyle: TextStyle(color: LightThemeColors.enabledBorder),
        errorStyle: TextStyle(
          color: LightThemeColors.negative,
        ),
        alignLabelWithHint: true,
        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20));
  }
}

// focusedBorder: UnderlineInputBorder(
//   // borderRadius: BorderRadius.circular(25.0),
//   borderSide: BorderSide(
//     color: Colors.grey.shade700,
//   ),
// ),
