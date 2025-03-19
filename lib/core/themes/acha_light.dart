import 'package:flutter/material.dart';

import 'package:acha/core/constants/index.dart';

ThemeData achaLight() {
  return ThemeData(
    fontFamily: 'NotoSansKR',
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    scaffoldBackgroundColor: AchaColors.white,
    colorScheme: const ColorScheme.light(
      primary: AchaColors.black,
      secondary: AchaColors.primaryBlue,
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: AchaColors.gray245_246_248,
      surfaceTintColor: Colors.transparent,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: WidgetStateProperty.all(0),
        splashFactory: NoSplash.splashFactory,
        overlayColor: WidgetStateColor.resolveWith(
          (state) => Colors.transparent,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        elevation: WidgetStateProperty.all(0),
        splashFactory: NoSplash.splashFactory,
        overlayColor: WidgetStateColor.resolveWith(
          (state) => Colors.transparent,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        elevation: WidgetStateProperty.all(0),
        splashFactory: NoSplash.splashFactory,
        overlayColor: WidgetStateColor.resolveWith(
          (state) => Colors.transparent,
        ),
      ),
    ),
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
        elevation: WidgetStateProperty.all(0),
        splashFactory: NoSplash.splashFactory,
        overlayColor: WidgetStateColor.resolveWith(
          (state) => Colors.transparent,
        ),
      ),
    ),
  );
}
