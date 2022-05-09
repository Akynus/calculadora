import 'package:flutter/material.dart';

class ResultTile extends StatelessWidget {
  final bool isLast;

  const ResultTile({
    Key? key,
    this.isLast = false,
  }) : super(key: key);

  TextStyle get _title {
    return const TextStyle(fontWeight: FontWeight.w500, fontSize: 20);
  }

  TextStyle get _subTitleNormal {
    return const TextStyle(fontWeight: FontWeight.w300, fontSize: 20);
  }

  TextStyle get _subTitleLast {
    return const TextStyle(fontWeight: FontWeight.w300, fontSize: 45);
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            '1 + 1',
            style: _title,
          )
        ],
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            '2',
            style: isLast ? _subTitleLast : _subTitleNormal,
          )
        ],
      ),
    );
  }
}
