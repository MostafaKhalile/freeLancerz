import 'package:flutter/material.dart';

class AppColors {
  static const primaryColor = Color(0xFF6D8BF4);
  static const primaryDarkColor = Color(0xFFE13939);
  static const primaryTypoColor = Color(0xFF172126);
  static const secondaryColor = Color.fromARGB(117, 25, 115, 121);
  static const secondaryTypoColor = Color(0xFFCCCCCC);
  static const greyTypoColor = Color(0xFF606060);

  static const scaffoldBackgroundColor = Color(0xFFEFEFEF);
  static const disabled = Color(0xFFF28383);
  static const highlightedPrimaryColor = Color(0xFFFFBBBB);

  static const confirmed = Color(0xFF00AF54);

  static const cyan = Color(0xFF30B5B0);
  static const darkBlue = Color(0xFF0360B7);
  static const orange = Color(0XFFFFBD73);
  static const yellow = Color(0XFFFEEBC8);
  static const green = Color(0XFF2BC261);
  static const redDark = Color(0XFFDE1F26);
  static const redLight = Color(0XFFFF4348);
  static const stock = Color(0XFFF1F1F1);

  static const black = Color.fromRGBO(0, 0, 0, 1.0);
  static const gray1 = Color(0xFFF4F5F9);
  static const gray2 = Color(0xFFE0E0E0);
  static const greyIcon = Color(0xFF959595);
  static const grayInput = Color(0xFFF6F6F6);
  static const grayBackground = Color(0xFFE5E5E5);
  static const grayBackgroundLight = Color(0xFFF6F8FC);
  static const shimmerBaseColor = Color.fromARGB(255, 189, 189, 189);
  static const shimmerHighlightColor = Color.fromARGB(255, 201, 200, 200);
  static const white = Color.fromRGBO(255, 255, 255, 1.0);

  static const cyanGradientStart = Color(0xFF30B5B0);
  static const cyanGradientEnd = Color(0xFF00EBE2);

  static const redGradientStart = redDark;
  static const redGradientEnd = Color(0xFFF29432);
  static const vatHint = Color(0xFFC59150);
  static const couponColor = Color(0xFFFEC65E);
}

ThemeData defaultTheme = ThemeData(
    fontFamily: 'Poppins',
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
    iconTheme: const IconThemeData(
      color: AppColors.primaryTypoColor,
      size: 18,
    ),
    inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.white,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: const BorderSide(
            color: Colors.blue,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 2.0,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 2.0,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(70),
          borderSide: const BorderSide(
            color: Colors.red,
            width: 2.0,
          ),
        )),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: AppColors.primaryColor));
