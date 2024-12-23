import 'package:flutter/material.dart';

ThemeData achaLight() {
  return ThemeData(
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(
      primary: Colors.black,
      secondary: Color.fromARGB(255, 0, 102, 255)
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: Color.fromARGB(255, 245, 246, 248),
      surfaceTintColor: Colors.transparent
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: WidgetStateProperty.all(0),
        splashFactory: NoSplash.splashFactory,
        overlayColor: WidgetStateColor.resolveWith((state) => Colors.transparent)
      )
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        elevation: WidgetStateProperty.all(0),
        splashFactory: NoSplash.splashFactory,
        overlayColor: WidgetStateColor.resolveWith((state) => Colors.transparent)
      )
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        elevation: WidgetStateProperty.all(0),
        splashFactory: NoSplash.splashFactory,
        overlayColor: WidgetStateColor.resolveWith((state) => Colors.transparent)
      )
    )
  );
}