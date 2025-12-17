import 'package:flutter/material.dart';
import 'package:theme/Screens/theme_page.dart';
import 'package:theme/app';

class HomeScreen extends StatefulWidget {
  final Function(AppThemeType) onThemeChange;
  const HomeScreen({super.key, required this.onThemeChange});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Theme"),
          actions: [
            PopupMenuButton<AppThemeType>(
              onSelected: widget.onThemeChange,
              itemBuilder:
                  (context) => const [
                    PopupMenuItem(
                      value: AppThemeType.light,
                      child: Text("Light Theme"),
                    ),
                    PopupMenuItem(
                      value: AppThemeType.dark,
                      child: Text("Dark Theme"),
                    ),
                    PopupMenuItem(
                      value: AppThemeType.custom,
                      child: Text(" Theme"),
                    ),
                  ],
            ),
          ],
        ),

        body: Container(
          child: Row(
            children: [
              Text("Theme"),

              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) =>
                                ThemePage(onThemeChange: widget.onThemeChange),
                      ),
                    );
                  },
                  child: Text("Next Page"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
