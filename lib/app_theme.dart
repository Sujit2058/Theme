import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.teal,
    scaffoldBackgroundColor: const Color.fromARGB(255, 241, 245, 133),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.lightGreen,
      foregroundColor: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
    ),
  );
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color.fromARGB(255, 193, 0, 0),
    scaffoldBackgroundColor: const Color.fromARGB(255, 100, 100, 100),

    appBarTheme: AppBarTheme(
      backgroundColor: const Color.fromARGB(255, 47, 47, 47),
      foregroundColor: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        foregroundColor: Colors.grey,
      ),
    ),
  );
  static final ThemeData custom = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color.fromARGB(255, 193, 0, 0),
    scaffoldBackgroundColor: const Color.fromARGB(255, 5, 80, 255),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color.fromARGB(255, 6, 22, 43),
      foregroundColor: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.black,
      ),
    ),
  );
}
