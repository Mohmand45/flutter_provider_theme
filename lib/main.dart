import 'package:flutter/material.dart';
import 'package:flutter_theme/ThemeData/theme_dark.dart';
import 'package:flutter_theme/ThemeData/theme_notifier.dart';
import 'package:provider/provider.dart';

import 'ThemeData/theme_light.dart';
import 'home_page.dart';

void main() {
  runApp((MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => ThemeNotifier())],
    child: MyApp(),
  )));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeLight.light_theme,
      darkTheme: ThemeDark.dark_theme,
      themeMode: context
          .watch<ThemeNotifier>()
          .getThemeStatus
          ? ThemeMode.dark
          : ThemeMode.light,
      home: const MyHomePage(),
    );
  }
}
