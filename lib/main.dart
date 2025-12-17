import 'package:flutter/material.dart';
import 'package:theme/app';
import 'package:theme/app_theme.dart';
import 'package:theme/home_screen.dart';

void main() {
  runApp(App());
}

enum ThemeDataType { light, dark, custom }

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  AppThemeType _currentTheme = AppThemeType.light;
  ThemeData get theme {
    switch (_currentTheme) {
      case AppThemeType.dark:
        return AppTheme.darkTheme;
      case AppThemeType.custom:
        return AppTheme.custom;
      default:
        return AppTheme.lightTheme;
    }
  }

  void changeTheme(AppThemeType theme) {
    setState(() {
      _currentTheme = theme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: HomeScreen(onThemeChange: changeTheme),
    );
  }
}
