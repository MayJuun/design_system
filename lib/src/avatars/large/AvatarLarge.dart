import 'package:flutter/material.dart';
import 'package:mayjuun_design_system/src/enums/avartar.dart';

// class AvatarLarge extends StatelessWidget {
//   final AvatarGender gender;
//   final AvatarMaturity maturity;
//   final AvatarSkinType skinType;
//   const AvatarLarge(
//       {Key? key,
//       required this.gender,
//       required this.maturity,
//       required this.skinType})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return gender==AvatarGender.male? SizedBox(
//                width: 40, child: Image.asset('assets/avatars/Male_large_9.png')):;
//   }
// }
// ignore: avoid_classes_with_only_static_members
class AvatarLarge {
  static SizedBox? avatar(
      AvatarGender gender, AvatarMaturity maturity, AvatarSkinType skinType) {
    if (gender == AvatarGender.male) {
      if (maturity == AvatarMaturity.teenager) {
        if (skinType == AvatarSkinType.black) {
          return SizedBox(
              width: 40, child: Image.asset('assets/avatars/Male_large_9.png'));
        } else if (skinType == AvatarSkinType.brown) {
          return SizedBox(
              width: 40, child: Image.asset('assets/avatars/Male_large_8.png'));
        } else {
          return SizedBox(
              width: 40, child: Image.asset('assets/avatars/Male_large_5.png'));
        }
      } else {
        if (skinType == AvatarSkinType.black) {
          return SizedBox(
              width: 40, child: Image.asset('assets/avatars/Male_large_4.png'));
        } else if (skinType == AvatarSkinType.brown) {
          return SizedBox(
              width: 40, child: Image.asset('assets/avatars/Male_large_3.png'));
        } else {
          return SizedBox(
              width: 40, child: Image.asset('assets/avatars/Male_large_1.png'));
        }
      }
      // ignore: unrelated_type_equality_checks
    } else if (gender == AvatarGender.female) {
      if (maturity == AvatarMaturity.teenager) {
        if (skinType == AvatarSkinType.black) {
          return SizedBox(
              width: 40,
              child: Image.asset('assets/avatars/Female_large_10.png'));
        } else if (skinType == AvatarSkinType.brown) {
          return SizedBox(
              width: 40,
              child: Image.asset('assets/avatars/Female_large_9.png'));
        } else {
          return SizedBox(
              width: 40,
              child: Image.asset('assets/avatars/Female_large_6.png'));
        }
      } else {
        if (skinType == AvatarSkinType.black) {
          return SizedBox(
              width: 40,
              child: Image.asset('assets/avatars/Female_large_5.png'));
        } else if (skinType == AvatarSkinType.brown) {
          return SizedBox(
              width: 40,
              child: Image.asset('assets/avatars/Female_large_4.png'));
        } else {
          return SizedBox(
              width: 40,
              child: Image.asset('assets/avatars/Female_large_1.png'));
        }
      }
    } else //nuetral{}
      return SizedBox(
          width: 40, child: Image.asset('assets/avatars/Nuetral_large.png'));
//Return an image
//we want have the type of avatars
//age
//Nationality
  }
}
