import 'package:flutter/material.dart';
import 'package:flutter_theme/ThemeData/theme_colors.dart';
import 'package:flutter_theme/ThemeData/theme_notifier.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'ThemeData/theme_text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void initState() {
    super.initState();
    setThemeInitialState();
  }

  void setThemeInitialState() async {
    final prefs = await SharedPreferences.getInstance();
    Provider.of<ThemeNotifier>(context, listen: false)
        .SetThemeStatus(prefs.getBool("is_dark_theme") ?? false);
  }

  bool is_dark_theme = false;

  @override
  Widget build(BuildContext context) {
    context.watch<ThemeNotifier>();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Theme',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () async {
                final prefs = await SharedPreferences.getInstance();
                final counter = await prefs.setInt('counter', 10);
                print(counter);
              },
              child: Text("Save Values",
                  style: Theme.of(context).textTheme.displayLarge),
            ),
            const SizedBox(height: 60),
            InkWell(
              onTap: () async {
                final prefs = await SharedPreferences.getInstance();
                final counter = prefs.getInt('counter') ?? 5;
                print(counter);
              },
              child: Text("Get Values",
                  style: Theme.of(context).textTheme.displayLarge),
            ),
            const SizedBox(height: 30),
            Text(
              'Flutter Theme',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {
                is_dark_theme = !is_dark_theme;
                Provider.of<ThemeNotifier>(context, listen: false)
                    .SetThemeStatus(is_dark_theme);
              },
              child: Icon(
                Icons.ac_unit,
                color: Theme.of(context).iconTheme.color,
                size: Theme.of(context).iconTheme.size,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
