import 'package:calculator/src/widgets/button/EqualButton.dart';
import 'package:calculator/src/widgets/button/KeyButton.dart';
import 'package:flutter/material.dart';

class ContainerKeyboard extends StatelessWidget {
  const ContainerKeyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      color: theme.backgroundColor.withOpacity(0.5),
      child: GridView.builder(
        shrinkWrap: true,
        primary: false,
        itemCount: 20,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (_, index) {
          if (index == 19) return EqualButton();
          return KeyButton(
            keyText: index.toString(),
            isDelete: index == 0,
            marked: [1, 2, 3, 7, 11, 15].contains(index),
          );
        },
      ),
    );
  }
}
