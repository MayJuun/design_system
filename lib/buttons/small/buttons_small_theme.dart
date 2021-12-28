// ignore_for_file: avoid_classes_with_only_static_members

import 'package:design_system/colors/colors.dart';
import 'package:design_system/typography/typography.dart';
import 'package:design_system/utils/consts.dart';
import 'package:flutter/material.dart';

class ButtonSmall {
  ///This method should be used for your app's internal theme where you want to
  ///have more flexiblity over your elevated button.
  ///Subsequently, you can call ```ButtonSmall.elevatedButtonComponent()```, ```ButtonMedium.elevatedButtonComponent()```,
  /// or ```ButtonLarge.elevatedButtonComponent()``` to have the desired and pre-fedefined button size
  static ElevatedButtonThemeData elevatedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
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

  ///This function takes in params: [child] of type required widget,
  ///
  ///[height] of type double? , [width] of type double?, [prefix] of type IconData?,
  ///
  ///[suffix] of type IconData and
  ///
  ///[onPressed] of type required void Function?
  static ElevatedButton elevatedButtonComponent({
    required Widget? child,
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
          Text(
            'Press me',
            style: MayJuunType.label3(),
          ),
          SpaceConsts.horizontalOne,
          Icon(suffix, size: 15),
        ],
      ),
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(
          const Size(350, 36),
        ),
      ),
    );
  }
}
