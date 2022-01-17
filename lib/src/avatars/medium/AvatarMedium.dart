import 'package:flutter/material.dart';
import 'package:mayjuun_design_system/src/enums/avartar.dart';

// ignore: avoid_classes_with_only_static_members
class AvatarMedium {
  static SizedBox? avatar(
      AvatarGender gender, AvatarMaturity maturity, AvatarSkinType skinType) {
    if (gender == AvatarGender.male) {
      if (maturity == AvatarMaturity.teenager) {
        if (skinType == AvatarSkinType.black) {
          return SizedBox(
              width: 40,
              child: Image.asset('assets/avatars/Male_medium_9.png'));
        } else if (skinType == AvatarSkinType.brown) {
          return SizedBox(
              width: 40,
              child: Image.asset('assets/avatars/Male_medium_8.png'));
        } else {
          return SizedBox(
              width: 40,
              child: Image.asset('assets/avatars/Male_medium_5.png'));
        }
      } else {
        if (skinType == AvatarSkinType.black) {
          return SizedBox(
              width: 40,
              child: Image.asset('assets/avatars/Male_medium_4.png'));
        } else if (skinType == AvatarSkinType.brown) {
          return SizedBox(
              width: 40,
              child: Image.asset('assets/avatars/Male_medium_3.png'));
        } else {
          return SizedBox(
              width: 40,
              child: Image.asset('assets/avatars/Male_medium_1.png'));
        }
      }
      // ignore: unrelated_type_equality_checks
    } else if (gender == AvatarGender.female) {
      if (maturity == AvatarMaturity.teenager) {
        if (skinType == AvatarSkinType.black) {
          return SizedBox(
              width: 40,
              child: Image.asset('assets/avatars/Female_medium_10.png'));
        } else if (skinType == AvatarSkinType.brown) {
          return SizedBox(
              width: 40,
              child: Image.asset('assets/avatars/Female_medium_9.png'));
        } else {
          return SizedBox(
              width: 40,
              child: Image.asset('assets/avatars/Female_medium_6.png'));
        }
      } else {
        if (skinType == AvatarSkinType.black) {
          return SizedBox(
              width: 40,
              child: Image.asset('assets/avatars/Female_medium_5.png'));
        } else if (skinType == AvatarSkinType.brown) {
          return SizedBox(
              width: 40,
              child: Image.asset('assets/avatars/Female_medium_4.png'));
        } else {
          return SizedBox(
              width: 40,
              child: Image.asset('assets/avatars/Female_medium_1.png'));
        }
      }
    } else //nuetral{}
      return SizedBox(
          width: 40, child: Image.asset('assets/avatars/Nuetral_medium.png'));
//Return an image
//we want have the type of avatars
//age
//Nationality
  }
}
