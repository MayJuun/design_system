import 'package:flutter/material.dart';
import 'package:mayjuun_design_system/src/enums/avartar.dart';

// ignore: avoid_classes_with_only_static_members
class AvatarLarge {
  static Widget avatar(AvatarGender gender, AvatarMaturity maturity,
      AvatarSkinType skinType, Avatarhaircolor haircolor) {
    const number = 60.00;
    if (gender == AvatarGender.male) {
      if (maturity == AvatarMaturity.teenager) {
        if (skinType == AvatarSkinType.black) {
          return SizedBox(
              height: number,
              child: Image.asset('assets/avatars/Male_large_9.png'));
        } else if (skinType == AvatarSkinType.brown) {
          return SizedBox(
              height: number,
              child: Image.asset('assets/avatars/Male_large_8.png'));
        } else {
          if (haircolor == Avatarhaircolor.black) {
            return SizedBox(
                height: number,
                child: Image.asset('assets/avatars/Male_large_5.png'));
          } else if (haircolor == Avatarhaircolor.lightbrown) {
            return SizedBox(
                height: number,
                child: Image.asset('assets/avatars/Male_large_6.png'));
          } else {
            return SizedBox(
                height: number,
                child: Image.asset('assets/avatars/Male_large_7.png'));
          }
        }
      } else {
        if (skinType == AvatarSkinType.black) {
          return SizedBox(
              height: number,
              child: Image.asset('assets/avatars/Male_large_4.png'));
        } else if (skinType == AvatarSkinType.brown) {
          return SizedBox(
              height: number,
              child: Image.asset('assets/avatars/Male_large_3.png'));
        } else {
          if (haircolor == Avatarhaircolor.black) {
            return SizedBox(
                height: number,
                child: Image.asset('assets/avatars/Male_large_1.png'));
          } else if (haircolor == Avatarhaircolor.lightbrown) {
            return SizedBox(
                height: number,
                child: Image.asset('assets/avatars/Male_large_2.png'));
          } else {
            return SizedBox(
                height: number,
                child: Image.asset('assets/avatars/Male_large_10.png'));
          }
        }
      }
      // ignore: unrelated_type_equality_checks
    } else if (gender == AvatarGender.female) {
      if (maturity == AvatarMaturity.teenager) {
        if (skinType == AvatarSkinType.black) {
          return SizedBox(
              height: number,
              child: Image.asset('assets/avatars/Female_large_10.png'));
        } else if (skinType == AvatarSkinType.brown) {
          return SizedBox(
              height: number,
              child: Image.asset('assets/avatars/Female_large_9.png'));
        } else {
          if (haircolor == Avatarhaircolor.black) {
            return SizedBox(
                height: number,
                child: Image.asset('assets/avatars/Female_large_6.png'));
          } else if (haircolor == Avatarhaircolor.lightbrown) {
            return SizedBox(
                height: number,
                child: Image.asset('assets/avatars/Female_large_7.png'));
          } else {
            return SizedBox(
                height: number,
                child: Image.asset('assets/avatars/Female_large_8.png'));
          }
        }
      } else {
        if (skinType == AvatarSkinType.black) {
          return SizedBox(
              height: number,
              child: Image.asset('assets/avatars/Female_large_5.png'));
        } else if (skinType == AvatarSkinType.brown) {
          return SizedBox(
              height: number,
              child: Image.asset('assets/avatars/Female_large_4.png'));
        } else {
          if (haircolor == Avatarhaircolor.black) {
            return SizedBox(
                height: number,
                child: Image.asset('assets/avatars/Female_large_1.png'));
          } else if (haircolor == Avatarhaircolor.lightbrown) {
            return SizedBox(
                height: number,
                child: Image.asset('assets/avatars/Female_large_2.png'));
          } else {
            return SizedBox(
                height: number,
                child: Image.asset('assets/avatars/Female_large_3.png'));
          }
        }
      }
    } else //nuetral{}
      return SizedBox(
          height: number,
          child: Image.asset('assets/avatars/Nuetral_large.png'));
//Return an image
//we want have the type of avatars
//age
//Nationality
  }
}
