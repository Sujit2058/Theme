import 'package:flutter/material.dart';
import 'package:theme/app';

class ThemePage extends StatefulWidget {
  final Function(AppThemeType) onThemeChange;
  const ThemePage({super.key, required this.onThemeChange});

  @override
  State<ThemePage> createState() => _ThemePageState();
}

class _ThemePageState extends State<ThemePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Reel")));
  }
}
