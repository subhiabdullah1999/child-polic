import 'package:children_police/core/constants/colors_app.dart';
import 'package:flutter/material.dart';

ThemeData themeArabic = ThemeData(
    primarySwatch: Colors.blue,
    textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 20,
          fontFamily: "Cairo",
          fontWeight: FontWeight.w600,
          color: AppColors.blacColor1,
        ),
        bodyLarge: TextStyle(
          fontSize: 18,
          fontFamily: "Cairo",
          fontWeight: FontWeight.w500,
          color: AppColors.blacColor1,
        ),
        bodyMedium: TextStyle(
          fontSize: 16,
          fontFamily: "Cairo",
          fontWeight: FontWeight.w400,
          color: AppColors.blacColor1,
        )));

ThemeData themeEnglish = ThemeData(
    primarySwatch: Colors.blue,
    textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 20,
          fontFamily: "playFireDisplay",
          fontWeight: FontWeight.w600,
          color: AppColors.blacColor1,
        ),
        bodyLarge: TextStyle(
          fontSize: 18,
          fontFamily: "playFireDisplay",
          fontWeight: FontWeight.w500,
          color: AppColors.blacColor1,
        ),
        bodyMedium: TextStyle(
          fontSize: 16,
          fontFamily: "playFireDisplay",
          fontWeight: FontWeight.w400,
          color: AppColors.blacColor1,
        )));

ThemeData themeAppbar = ThemeData(
    appBarTheme: const AppBarTheme(
  backgroundColor: AppColors.blacColor3,
  elevation: 0,
  centerTitle: true,
  iconTheme: IconThemeData(color: AppColors.whitet2, size: 35),
));
