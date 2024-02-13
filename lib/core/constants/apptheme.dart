import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "Poppins",
  textTheme: TextTheme(
      displayLarge: const TextStyle(
          fontSize: 28, color: Colors.black, fontWeight: FontWeight.w600),
      bodyLarge: const TextStyle(
          height: 1.2, fontSize: 15, fontWeight: FontWeight.w500),
      bodyMedium: const TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
      bodySmall: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Colors.grey.shade600),
      displaySmall: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w500,
          color: Color.fromARGB(255, 255, 255, 255)),
      titleSmall: const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w600,color: Colors.white,),
      titleMedium: const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,color: Colors.black,
    ),
      ));


ThemeData themeArabic = ThemeData(
  fontFamily: "cairo",
  textTheme: TextTheme(
    displayLarge: const TextStyle(
        fontSize: 28, color: Colors.black, fontWeight: FontWeight.w600),
    bodyLarge:
        const TextStyle(height: 1.3, fontSize: 15, fontWeight: FontWeight.w500),
    bodyMedium: const TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w600,
    ),
    bodySmall: TextStyle(
        fontSize: 15, fontWeight: FontWeight.w500, color: Colors.grey.shade600),
    displaySmall: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: Color.fromARGB(255, 255, 255, 255)),
    titleSmall: const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,color: Colors.white,
    ),
    titleMedium: const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w600,color: Colors.black,
    ),
  ),
);
