// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/material.dart';
import 'package:mayjuun_design_system/src/buttons/universal/round_button.dart';
import 'package:mayjuun_design_system/src/buttons/universal/square_button.dart';
import 'package:mayjuun_design_system/src/utils/consts.dart';

class ButtonLarge {
  ///This function takes in params: [child] of type required widget,
  ///
  ///[height] of type double? , [width] of type double?, [prefix] of type IconData?,
  ///
  ///[suffix] of type IconData and
  ///
  ///[onPressed] of type required void Function?
  static ElevatedButton elevatedButtonComponent({
    required Widget child,
    double? height,
    double? width,
    IconData? prefix,
    IconData? suffix,
    required void Function() onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(prefix, size: 15),
          SpaceConsts.horizontalOne,
          child,
          SpaceConsts.horizontalOne,
          Icon(suffix, size: 15),
        ],
      ),
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(
          Size(width ?? 350, height ?? 56),
        ),
      ),
    );
  }

  ///This method takes in params: [child] of type required widget,
  ///
  ///[height] of type double? , [width] of type double?, [prefix] of type IconData?,
  ///
  ///[suffix] of type IconData and
  ///
  ///[onPressed] of type required void Function?
  ///
  static Row pillButton({
    required Widget child,
    double? height,
    double? width,
    IconData? prefix,
    IconData? suffix,
    required void Function() onPressed,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Align(
          child: SizedBox(
            height: height ?? 48,
            width: width,
            child: ElevatedButton(
              onPressed: onPressed,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(prefix, size: 15),
                  SpaceConsts.horizontalOne,
                  child,
                  SpaceConsts.horizontalOne,
                  Icon(suffix, size: 15),
                ],
              ),
              style: ButtonStyle(
                enableFeedback: true,
                shape: MaterialStateProperty.all<OutlinedBorder>(
                    const StadiumBorder()),
              ),
            ),
          ),
        ),
      ],
    );
  }

  ///Only use one child at a time with this button: only an Icon, a number or a single or double letter(s).
  ///This method takes in params: [child] of type required widget,
  ///
  ///[Icon] of type Icon?
  ///
  ///[onPressed] of type required void Function?
  ///
  static Widget squareButton(
      {required child, required void Function() onPressed}) {
    return squareButtonComponent(child: child, onPressed: onPressed);
  }

  ///Only use one child at a time with this button: only an Icon, a number or a single or double letter(s).
  ///This method takes in params: [child] of type required widget,
  ///
  ///[Icon] of type Icon?
  ///
  ///[onPressed] of type required void Function?
  ///
  static Widget roundButton(
      {required child, required void Function() onPressed}) {
    return roundButtonComponent(child: child, onPressed: onPressed);
  }
}
