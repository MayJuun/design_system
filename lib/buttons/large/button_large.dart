// ignore_for_file: avoid_classes_with_only_static_members

import 'package:design_system/utils/consts.dart';
import 'package:flutter/material.dart';

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
}
