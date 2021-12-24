import 'package:design_system/colors/colors.dart';
import 'package:flutter/material.dart';

// ignore_for_file: avoid_classes_with_only_static_members
class MayJuunType {
  static FontWeight displayWeight = FontWeight.w400;
  static FontWeight headingWeight = FontWeight.w600;
  static FontWeight labelWeight = FontWeight.w400;
  static FontWeight paragrapghWeight = FontWeight.w300;

  // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  //DISPLAY
  // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  ///Outputs the corresponding font size and properties.
  ///
  ///To overide default values
  ///input```color``` and ```fontweight``` .

  static TextStyle display1({Color? color, FontWeight? fontWeight}) =>
      TextStyle(
          fontSize: 72,
          color: color ?? LightThemeColors.contentPrimary,
          fontFamily: 'Inter-ExtraLight',
          fontWeight: fontWeight ?? displayWeight);

  ///Outputs the corresponding font size and properties.
  ///
  ///To overide default values
  ///input```color``` and ```fontweight``` .
  static TextStyle display2({Color? color, FontWeight? fontWeight}) =>
      TextStyle(
          fontSize: 58,
          color: color ?? LightThemeColors.contentPrimary,
          fontFamily: 'Inter-ExtraLight',
          fontWeight: fontWeight ?? displayWeight);

  ///Outputs the corresponding font size and properties.
  ///
  ///To overide default values
  ///input```color``` and ```fontweight``` .
  static TextStyle display3({Color? color, FontWeight? fontWeight}) =>
      TextStyle(
          fontSize: 45,
          color: color ?? LightThemeColors.contentPrimary,
          fontFamily: 'Inter-ExtraLight',
          fontWeight: fontWeight ?? displayWeight);

  ///Outputs the corresponding font size and properties.
  ///
  ///To overide default values
  ///input```color``` and ```fontweight``` .
  static TextStyle display4({Color? color, FontWeight? fontWeight}) =>
      TextStyle(
          fontSize: 36,
          color: color ?? LightThemeColors.contentPrimary,
          fontFamily: 'Inter-ExtraLight',
          fontWeight: fontWeight ?? displayWeight);

  // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  //HEADING
  // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  static TextStyle heading1({Color? color, FontWeight? fontWeight}) =>
      TextStyle(
          fontSize: 40,
          color: color ?? LightThemeColors.contentPrimary,
          fontFamily: 'Inter-ExtraLight',
          fontWeight: fontWeight ?? headingWeight);

  static TextStyle heading2({Color? color, FontWeight? fontWeight}) =>
      TextStyle(
          fontSize: 36,
          color: color ?? LightThemeColors.contentPrimary,
          fontFamily: 'Inter-ExtraLight',
          fontWeight: fontWeight ?? headingWeight);

  static TextStyle heading3({Color? color, FontWeight? fontWeight}) =>
      TextStyle(
          fontSize: 32,
          color: color ?? LightThemeColors.contentPrimary,
          fontFamily: 'Inter-ExtraLight',
          fontWeight: fontWeight ?? headingWeight);

  static TextStyle heading4({Color? color, FontWeight? fontWeight}) =>
      TextStyle(
          fontSize: 28,
          color: color ?? LightThemeColors.contentPrimary,
          fontFamily: 'Inter-ExtraLight',
          fontWeight: fontWeight ?? headingWeight);

  static TextStyle heading5({Color? color, FontWeight? fontWeight}) =>
      TextStyle(
          fontSize: 24,
          color: color ?? LightThemeColors.contentPrimary,
          fontFamily: 'Inter-ExtraLight',
          fontWeight: fontWeight ?? headingWeight);
  static TextStyle heading6({Color? color, FontWeight? fontWeight}) =>
      TextStyle(
          fontSize: 20,
          color: color ?? LightThemeColors.contentPrimary,
          fontFamily: 'Inter-ExtraLight',
          fontWeight: fontWeight ?? headingWeight);

  // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  //LABEL
  // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  static TextStyle label1({Color? color, FontWeight? fontWeight}) => TextStyle(
      fontSize: 18,
      color: color ?? LightThemeColors.contentPrimary,
      fontFamily: 'Inter-ExtraLight',
      fontWeight: fontWeight ?? labelWeight);
  static TextStyle label2({Color? color, FontWeight? fontWeight}) => TextStyle(
      fontSize: 16,
      color: color ?? LightThemeColors.contentPrimary,
      fontFamily: 'Inter-ExtraLight',
      fontWeight: fontWeight ?? labelWeight);
  static TextStyle label3({Color? color, FontWeight? fontWeight}) => TextStyle(
      fontSize: 14,
      color: color ?? LightThemeColors.contentPrimary,
      fontFamily: 'Inter-ExtraLight',
      fontWeight: fontWeight ?? labelWeight);
  static TextStyle label4({Color? color, FontWeight? fontWeight}) => TextStyle(
      fontSize: 12,
      color: color ?? LightThemeColors.contentPrimary,
      fontFamily: 'Inter-ExtraLight',
      fontWeight: fontWeight ?? labelWeight);

  // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  //PARAGRAPGH
  // %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  static TextStyle p1({Color? color, FontWeight? fontWeight}) => TextStyle(
      fontSize: 18,
      color: color ?? LightThemeColors.contentPrimary,
      fontFamily: 'Inter-ExtraLight',
      fontWeight: fontWeight ?? paragrapghWeight);
  static TextStyle p2({Color? color, FontWeight? fontWeight}) => TextStyle(
      fontSize: 16,
      color: color ?? LightThemeColors.contentPrimary,
      fontFamily: 'Inter-ExtraLight',
      fontWeight: fontWeight ?? paragrapghWeight);
  static TextStyle p3({Color? color, FontWeight? fontWeight}) => TextStyle(
      fontSize: 14,
      color: color ?? LightThemeColors.contentPrimary,
      fontFamily: 'Inter-ExtraLight',
      fontWeight: fontWeight ?? paragrapghWeight);
  static TextStyle p4({Color? color, FontWeight? fontWeight}) => TextStyle(
      fontSize: 12,
      color: color ?? LightThemeColors.contentPrimary,
      fontFamily: 'Inter-ExtraLight',
      fontWeight: fontWeight ?? paragrapghWeight);
}
