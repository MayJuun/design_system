// ignore_for_file: avoid_classes_with_only_static_members, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:mayjuun_design_system/src/all.convenience.dart';

///This class contains all the color codes found in the official MayJuun Design System.
///Design URL: https://www.figma.com/file/yNUOneqHN92b5QkMCnleVb/MayJuun-Design-System?node-id=0%3A1
class ColorSwatches {
  /// ToDo: Check that all 50 values in maps are present
//COLOR RED//
  static MaterialColor redSwatch = MaterialColor(0xFFF44336, <int, Color>{
    50: ColorCodes.RED50,
    100: ColorCodes.RED100,
    200: ColorCodes.RED200,
    300: ColorCodes.RED300,
    400: ColorCodes.RED400,
    500: ColorCodes.RED500,
    600: ColorCodes.RED600,
    700: ColorCodes.RED700,
    800: ColorCodes.RED800,
    900: ColorCodes.RED900,
  });

//COLOR Green//
  static MaterialColor greenSwatch = MaterialColor(0xFF4CAF50, <int, Color>{
    50: ColorCodes.GRN100,
    100: ColorCodes.GRN100,
    200: ColorCodes.GRN200,
    300: ColorCodes.GRN300,
    400: ColorCodes.GRN400,
    500: ColorCodes.GRN500,
    600: ColorCodes.GRN600,
    700: ColorCodes.GRN700,
    800: ColorCodes.GRN800,
    900: ColorCodes.GRN900,
  });

  //COLOR BrandGreen//
  static MaterialColor brandGreenSwatch =
      MaterialColor(0xFF4CAF50, <int, Color>{
    50: ColorCodes.BGRN100,
    100: ColorCodes.BGRN100,
    200: ColorCodes.BGRN200,
    300: ColorCodes.BGRN300,
    400: ColorCodes.BGRN400,
    500: ColorCodes.BGRN500,
    600: ColorCodes.BGRN600,
    700: ColorCodes.BGRN700,
    800: ColorCodes.BGRN800,
    900: ColorCodes.BGRN900,
  });

//COLOR Orange//
  /// ToDo: Complete orange colors
  static Color ORN50 = const Color(0XFF4D3300);
  static Color ORN300 = const Color(0XFFCC8700);
  static Color ORN400 = const Color(0XFFED9D00);
  static Color ORN1K = const Color(0XFFFFEECC);

//COLOR Blue//
  static MaterialColor blueSwatch = MaterialColor(0xFF2196F3, <int, Color>{
    50: ColorCodes.BLU100,
    100: ColorCodes.BLU100,
    200: ColorCodes.BLU200,
    300: ColorCodes.BLU300,
    400: ColorCodes.BLU400,
    500: ColorCodes.BLU500,
    600: ColorCodes.BLU600,
    700: ColorCodes.BLU700,
    800: ColorCodes.BLU800,
    900: ColorCodes.BLU900,
  });

//COLOR Grey//
  static MaterialColor greySwatch = MaterialColor(0xFF9E9E9E, <int, Color>{
    50: ColorCodes.GRY300,
    100: ColorCodes.GRY300,
    200: ColorCodes.GRY300,
    300: ColorCodes.GRY300,
    400: ColorCodes.GRY400,
    500: ColorCodes.GRY500,
    600: ColorCodes.GRY600,
    700: ColorCodes.GRY700,
    800: ColorCodes.GRY800,
    900: ColorCodes.GRY900,
  });

//COLOR Aqua//
  static MaterialColor aquaSwatch = MaterialColor(0xFF00FFFF, <int, Color>{
    50: ColorCodes.AQU100,
    100: ColorCodes.AQU100,
    200: ColorCodes.AQU200,
    300: ColorCodes.AQU300,
    400: ColorCodes.AQU400,
    500: ColorCodes.AQU500,
    600: ColorCodes.AQU600,
    700: ColorCodes.AQU700,
    800: ColorCodes.AQU800,
    900: ColorCodes.AQU900,
  });

//COLOR BrandPurple//
  static MaterialColor brandPurpleSwatch =
      MaterialColor(0xFF9C27B0, <int, Color>{
    50: ColorCodes.BPRL100,
    100: ColorCodes.BPRL100,
    200: ColorCodes.BPRL200,
    300: ColorCodes.BPRL300,
    400: ColorCodes.BPRL400,
    500: ColorCodes.BPRL500,
    600: ColorCodes.BPRL600,
    700: ColorCodes.BPRL700,
    800: ColorCodes.BPRL800,
    900: ColorCodes.BPRL900,
  });

//COLOR black//
  MaterialColor blackSwatch = MaterialColor(
    0xFFFFFFFF,
    <int, Color>{
      50: ColorCodes.BLK100,
      100: ColorCodes.BLK100,
      200: ColorCodes.BLK100,
      300: ColorCodes.BLK200,
      400: ColorCodes.BLK200,
      500: ColorCodes.BLK200,
      600: ColorCodes.BLK200,
      700: ColorCodes.BLK300,
      800: ColorCodes.BLK300,
      900: ColorCodes.BLK300,
    },
  );

//COLOR white/
  MaterialColor whiteSwatch = MaterialColor(
    0xFFFFFFFF,
    <int, Color>{
      50: ColorCodes.WHT,
      100: ColorCodes.WHT,
      200: ColorCodes.WHT,
      300: ColorCodes.WHT,
      400: ColorCodes.WHT,
      500: ColorCodes.WHT,
      600: ColorCodes.WHT,
      700: ColorCodes.WHT,
      800: ColorCodes.WHT,
      900: ColorCodes.WHT,
    },
  );
}
