import 'package:flutter/material.dart';
import 'package:mayjuun_design_system/src/enums/avartar.dart';

// ignore: avoid_classes_with_only_static_members
class AvatarSmall {
  static SizedBox? avatar(
      AvatarGender gender, AvatarMaturity maturity, AvatarSkinType skinType) {
    if (gender == AvatarGender.male) {
      if (maturity == AvatarMaturity.teenager) {
        if (skinType == AvatarSkinType.black) {
          return SizedBox(
              width: 40, child: Image.asset('assets/avatars/Male_small_9.png'));
        } else if (skinType == AvatarSkinType.brown) {
          return SizedBox(
              width: 40, child: Image.asset('assets/avatars/Male_small_8.png'));
        } else {
          return SizedBox(
              width: 40, child: Image.asset('assets/avatars/Male_small_5.png'));
        }
      } else {
        if (skinType == AvatarSkinType.black) {
          return SizedBox(
              width: 40, child: Image.asset('assets/avatars/Male_small_4.png'));
        } else if (skinType == AvatarSkinType.brown) {
          return SizedBox(
              width: 40, child: Image.asset('assets/avatars/Male_small_3.png'));
        } else {
          return SizedBox(
              width: 40, child: Image.asset('assets/avatars/Male_small_1.png'));
        }
      }
      // ignore: unrelated_type_equality_checks
    } else if (gender == AvatarGender.male) {
      if (maturity == AvatarMaturity.teenager) {
        if (skinType == AvatarSkinType.black) {
          return SizedBox(
              width: 40,
              child: Image.asset('assets/avatars/Female_small_10.png'));
        } else if (skinType == AvatarSkinType.brown) {
          return SizedBox(
              width: 40,
              child: Image.asset('assets/avatars/Female_small_9.png'));
        } else {
          return SizedBox(
              width: 40,
              child: Image.asset('assets/avatars/Female_small_6.png'));
        }
      } else {
        if (skinType == AvatarSkinType.black) {
          return SizedBox(
              width: 40,
              child: Image.asset('assets/avatars/Female_small_5.png'));
        } else if (skinType == AvatarSkinType.brown) {
          return SizedBox(
              width: 40,
              child: Image.asset('assets/avatars/Female_small_4.png'));
        } else {
          return SizedBox(
              width: 40,
              child: Image.asset('assets/avatars/Female_small_1.png'));
        }
      }
    } else //nuetral{}
      return SizedBox(
          width: 40, child: Image.asset('assets/avatars/Nuetral_small.png'));
//Return an image
//we want have the type of avatars
//age
//Nationality
  }
}
