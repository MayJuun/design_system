// ignore_for_file: prefer_const_constructors, avoid_classes_with_only_static_members

import 'package:flutter/material.dart';
import 'package:mayjuun_design_system/mayjuun_design_system.dart';

class FormInputTheme {
  //params enabled color, focused Color, form themeMode,
  static InputDecorationTheme formTheme(
      {required Color enabledColor,
      required Color focusedColor,
      required FormInputType formType,
      required ThemeModeType themeMode}) {
    return InputDecorationTheme(
        //General Border Color
        border: OutlineInputBorder(
          borderSide: BorderSide(
              color: themeMode == ThemeModeType.lightTheme
                  ? LightThemeColors.enabledBorder
                  : DarkThemeColors.enabledBorder,
              width: formType == FormInputType.outline ? 1 : 0),
        ),

        //Enabled Border Color
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: formType == FormInputType.outline
                  ? enabledColor
                  : Colors.transparent,
              width: formType == FormInputType.outline ? 1 : 0),
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
        fillColor: formType == FormInputType.fill
            ? focusedColor.withOpacity(.15)
            : Colors.transparent,
        filled: formType == FormInputType.outline ? false : true,
        alignLabelWithHint: true,
        contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 20));
  }
}
