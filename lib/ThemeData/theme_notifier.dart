import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeNotifier extends ChangeNotifier {
  bool is_dark_theme = false;

  bool get getThemeStatus {
    return is_dark_theme;
  }

  void SetThemeStatus(bool isDarkTheme) async {
    is_dark_theme = isDarkTheme;

    final prefs = await SharedPreferences.getInstance();
    final counter = await prefs.setBool('is_dark_theme', is_dark_theme);

    notifyListeners();
  }
}
