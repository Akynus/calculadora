import 'package:calculator/src/resources/theme.dart';
import 'package:calculator/src/ui/main_ui.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: theme,
      darkTheme: themeDark,
      home: const MainUI(),
    );
  }
}
