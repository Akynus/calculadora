import 'package:calculator/src/widgets/container/container_keyboard.dart';
import 'package:calculator/src/widgets/container/container_result.dart';
import 'package:flutter/material.dart';

class MainUI extends StatefulWidget {
  const MainUI({Key? key}) : super(key: key);

  @override
  State<MainUI> createState() => _MainUIState();
}

class _MainUIState extends State<MainUI> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.primaryContainer,
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [ContainerResult(), ContainerKeyboard()],
        ),
      ),
    );
  }
}
