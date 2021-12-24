//This class stores all reusabke horizontal and vertial space constants.
import 'package:flutter/material.dart';

// ignore_for_file: avoid_classes_with_only_static_members
class SpaceConsts {
  static BuildContext? context;
  static SizedBox horizontalOne = const SizedBox(
    width: 10,
  );
  static SizedBox horizontalTwo = const SizedBox(
    width: 30,
  );
  static SizedBox verticalOne = const SizedBox(
    height: 10,
  );
  static SizedBox verticalTwo = const SizedBox(
    height: 30,
  );

  static double buttomMargin = 50;

  //Device height and width
  static double deviceHieight(BuildContext context) =>
      MediaQuery.of(context).size.height;

  static double deviceWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double buttonWidth(BuildContext context) =>
      MediaQuery.of(context).size.width * .8;

  static double buttonHeight = 50;
}
