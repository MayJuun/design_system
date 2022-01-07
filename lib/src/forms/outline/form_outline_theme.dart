// ignore_for_file: prefer_const_constructors, avoid_classes_with_only_static_members

import 'package:flutter/material.dart';

class FormInputTheme {
  static InputDecorationTheme outlineFormTheme() {
    return InputDecorationTheme(
        focusColor: Colors.grey.shade500,
        // focusedBorder: UnderlineInputBorder(
        //   // borderRadius: BorderRadius.circular(25.0),
        //   borderSide: BorderSide(
        //     color: Colors.grey.shade700,
        //   ),
        // ),
        border: OutlineInputBorder(
          // borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
            color: Colors.grey.shade700,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          // borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide(
              // color: Colors.grey.shade700,
              ),
        ),
        labelStyle: TextStyle(color: Colors.grey.shade300));
  }
}
