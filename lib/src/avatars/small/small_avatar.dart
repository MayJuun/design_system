import 'package:flutter/material.dart';
import 'package:mayjuun_design_system/src/enums/avartar.dart';

// ignore: avoid_classes_with_only_static_members
class AvatarSmall {
  static SizedBox avatar(
      AvatarGender gender, AvatarMaturity maturity, AvatarSkinType skinType) {
    if (gender == AvatarGender.male) {
      if (maturity == AvatarMaturity.teenager) {
        if (skinType == AvatarSkinType.black) {
          return SizedBox(
              width: 40, child: Image.asset('//Male - Teenager - Black'));
        }
      } else {
        //
      }
    } else if (gender == 'female') {
    } else {}

    return SizedBox(width: 40, child: Image.asset(''));
//Return an image
//we want have the type of avatars
//age
//Nationality
  }
}
