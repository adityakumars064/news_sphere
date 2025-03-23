import 'package:flutter/material.dart';
import 'package:news_sphere/constants/dimens.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF093959);

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    textTheme:  TextTheme(
      headlineLarge: TextStyle(fontWeight: FontWeight.w600, fontFamily: "Poppins", fontSize: font_36, color: Colors.black),
      headlineMedium: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Poppins", fontSize: font_32, color: Colors.black),
      headlineSmall: TextStyle(fontWeight: FontWeight.w600, fontFamily: "Poppins", fontSize: font_22, color: Colors.black),
      bodyLarge: TextStyle(fontWeight: FontWeight.w600, fontFamily: "Poppins", fontSize: font_20, color: Colors.black),
      bodyMedium: TextStyle(fontWeight: FontWeight.w500, fontFamily: "Poppins", fontSize: font_10, color: Colors.black),
      bodySmall: TextStyle(fontWeight: FontWeight.w500, fontFamily: "Poppins", fontSize: font_14, color: Colors.black),
      labelMedium: TextStyle(fontWeight: FontWeight.w600, fontFamily: "Poppins", fontSize: font_16, color: Colors.black),
      labelSmall: TextStyle(fontWeight: FontWeight.w500, fontFamily: "Poppins", fontSize: font_8, color: Colors.black),
      displayLarge: TextStyle(fontWeight: FontWeight.w600, fontFamily: "Poppins", fontSize: font_18, color: Colors.black),
      displayMedium: TextStyle(fontWeight: FontWeight.w500, fontFamily: "Poppins", fontSize: font_15, color: Colors.black),
      displaySmall: TextStyle(fontWeight: FontWeight.w500, fontFamily: "Poppins", fontSize: font_12, color: Colors.black),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: primaryColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: primaryColor, width: 2),
      ),
      hintStyle: TextStyle(color: Colors.grey),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
      elevation: 0,
    ),
    textTheme:  TextTheme(
      headlineLarge: TextStyle(fontWeight: FontWeight.w600, fontFamily: "Poppins", fontSize: font_36, color: Colors.white),
      headlineMedium: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Poppins", fontSize: font_32, color: Colors.white),
      headlineSmall: TextStyle(fontWeight: FontWeight.w600, fontFamily: "Poppins", fontSize: font_22, color: Colors.white),
      bodyLarge: TextStyle(fontWeight: FontWeight.w600, fontFamily: "Poppins", fontSize: font_20, color: Colors.white),
      bodyMedium: TextStyle(fontWeight: FontWeight.w500, fontFamily: "Poppins", fontSize: font_10, color: Colors.white),
      bodySmall: TextStyle(fontWeight: FontWeight.w500, fontFamily: "Poppins", fontSize: font_14, color: Colors.white),
      labelMedium: TextStyle(fontWeight: FontWeight.w600, fontFamily: "Poppins", fontSize: font_16, color: Colors.white),
      labelSmall: TextStyle(fontWeight: FontWeight.w500, fontFamily: "Poppins", fontSize: font_8, color: Colors.white),
      displayLarge: TextStyle(fontWeight: FontWeight.w600, fontFamily: "Poppins", fontSize: font_18, color: Colors.white),
      displayMedium: TextStyle(fontWeight: FontWeight.w500, fontFamily: "Poppins", fontSize: font_15, color: Colors.white),
      displaySmall: TextStyle(fontWeight: FontWeight.w500, fontFamily: "Poppins", fontSize: font_12, color: Colors.white),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey[900],
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: primaryColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(color: primaryColor, width: 2),
      ),
      hintStyle: TextStyle(color: Colors.white60),
    ),
  );
}