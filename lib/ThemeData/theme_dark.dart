import 'package:flutter/material.dart';
import 'package:flutter_theme/ThemeData/theme_colors.dart';
import 'package:flutter_theme/ThemeData/theme_text.dart';

class ThemeDark {
  ThemeDark._();

  static ThemeData dark_theme = ThemeData(
    useMaterial3: true,
    appBarTheme: appbar_theme,
    textTheme: ThemeText.text_theme_dt,
    iconTheme: icon_theme_data,
    colorScheme: ColorScheme.fromSeed(
      background: ThemeColors.backgroundColor_dt,
      seedColor: ThemeColors.backgroundColor_dt,
    ),
  );

  static AppBarTheme appbar_theme = AppBarTheme(
      backgroundColor: Colors.black,
      titleTextStyle: TextStyle(
        fontSize: 22,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ));
  static IconThemeData icon_theme_data = IconThemeData(
    color: Colors.white,
    size: 40,
  );
}
