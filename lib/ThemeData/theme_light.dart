import 'package:flutter/material.dart';
import 'package:flutter_theme/ThemeData/theme_colors.dart';
import 'package:flutter_theme/ThemeData/theme_text.dart';

class ThemeLight {
  ThemeLight._();

  static ThemeData light_theme = ThemeData(
    useMaterial3: true,
    appBarTheme: appbar_theme,
    textTheme: ThemeText.text_theme_lt,
    iconTheme: icon_theme_data,
    colorScheme:
        ColorScheme.fromSeed(seedColor: ThemeColors.backgroundColor_lt),
  );

  static AppBarTheme appbar_theme = AppBarTheme(
    backgroundColor: Colors.white,
    titleTextStyle: TextStyle(
      fontSize: 22,
      color: Colors.black,
    ),
  );

  static IconThemeData icon_theme_data = IconThemeData(
    color: Colors.black,
    size: 40,
  );
}
