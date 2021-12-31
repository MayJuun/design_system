import 'package:design_system/colors/colors.dart';
import 'package:design_system/typography/typography.dart';
import 'package:design_system/utils/consts.dart';
import 'package:flutter/material.dart';

// ignore_for_file: avoid_classes_with_only_static_members
class TagSmall {
  //create a static method that returns a tag
  //Danger
  //warning
  //Neutral
  //Dissmable would be a boolean_selector

  static Widget tagOutline(
      {Color? color, bool? dismissabled, bool? isSelected}) {
    return Align(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
                width: 1, color: color ?? LightThemeColors.backgroundPositive)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.brightness_high,
              size: 20,
            ),
            SpaceConsts.horizontalOne,
            Text('Label',
                style: MayJuunType.label3().copyWith(
                  color: color ?? LightThemeColors.backgroundPositive,
                )),
            SpaceConsts.horizontalOne,
            Icon(
              Icons.cancel,
              size: 20,
              color: color ?? LightThemeColors.backgroundPositive,
            ),
          ],
        ),
      ),
    );
  }
}
