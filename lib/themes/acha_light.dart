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
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        splashFactory: NoSplash.splashFactory,
        overlayColor: WidgetStateColor.resolveWith((state) => Colors.transparent)
      )
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        splashFactory: NoSplash.splashFactory,
        overlayColor: WidgetStateColor.resolveWith((state) => Colors.transparent)
      )
    )
  );
}