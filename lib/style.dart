import 'dart:ui';

import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color primary = Color(0xff8a05be);
}

abstract class AppThemeData {
  static final ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Montserrat',
    primaryColor: AppColors.primary,
  );

  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    fontFamily: 'Montserrat',
    primaryColor: AppColors.primary,
    iconTheme: IconThemeData(color: Colors.black45),
    textTheme: TextTheme(
      body1: TextStyle(
        color: Colors.black45,
        fontWeight: FontWeight.w500,
      ),
      display1: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
