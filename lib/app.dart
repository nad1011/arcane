import 'package:flutter/material.dart';
import 'package:arcane/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: CusTheme.lightTheme,
      darkTheme: CusTheme.darkTheme,
    );
  }
}
