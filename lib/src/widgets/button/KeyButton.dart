import 'package:calculator/src/resources/theme.dart';
import 'package:flutter/material.dart';

class KeyButton extends StatelessWidget {
  final String keyText;
  final bool marked;
  final bool isDelete;

  const KeyButton({
    Key? key,
    this.marked = false,
    this.isDelete = false,
    required this.keyText,
  }) : super(key: key);

  TextStyle? _style(BuildContext context) {
    final theme = Theme.of(context);
    if(isDelete){
      return theme.textTheme.bodyText2!.copyWith(color: Colors.red.shade700);
    }

    if (marked) {
      return theme.textTheme.bodyText2!.copyWith(color: primaryColor);
    }
    return theme.textTheme.bodyText2;
  }

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        keyText,
        style: _style(context),
      ),
    );
  }
}
