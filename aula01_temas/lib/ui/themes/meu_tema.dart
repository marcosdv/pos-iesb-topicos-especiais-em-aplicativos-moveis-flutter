import 'package:flutter/material.dart';

ThemeData meuTema() {
  const primaryColor = Color(0xFF4A129F);
  const primaryColorDark = Color(0xFF1F004E);
  const primaryColorLight = Color(0xFF8C3FFF);

  final inputDecoration = InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: primaryColorDark),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: primaryColorLight, width: 2),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: Colors.grey.shade700),
    ),
  );

  final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStateProperty.all(primaryColor),
      foregroundColor: WidgetStateProperty.all(Colors.white),
      padding: WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 32, vertical: 18)),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
      ),
    )
  );

  const textTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: primaryColor),
    titleLarge: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
  );

  const appBarTheme = AppBarTheme(
    color: primaryColorDark,
    foregroundColor: Colors.white,
    centerTitle: true,
    titleTextStyle: TextStyle(fontSize: 28, color: Colors.white)
  );

  return ThemeData(
    primaryColor: primaryColor,
    primaryColorDark: primaryColorDark,
    primaryColorLight: primaryColorLight,
    inputDecorationTheme: inputDecoration,
    elevatedButtonTheme: elevatedButtonTheme,
    textTheme: textTheme,
    appBarTheme: appBarTheme
  );
}