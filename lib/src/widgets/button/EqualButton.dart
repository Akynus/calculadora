import 'package:calculator/src/resources/theme.dart';
import 'package:flutter/material.dart';

class EqualButton extends StatelessWidget {
  const EqualButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: primaryColor,
          shape: const StadiumBorder()
        ),
        child: Text(
          "=",
          style: theme.textTheme.bodyText2!.copyWith(
            color: primaryColor.textColor,
            fontWeight: FontWeight.bold,
            fontSize: 60
          ),
        ),
      ),
    );
  }
}
