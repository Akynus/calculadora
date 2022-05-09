import 'package:calculator/src/widgets/label/result_tile.dart';
import 'package:flutter/material.dart';

class ContainerResult extends StatelessWidget {
  const ContainerResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: SizedBox(
        width: size.width,
        child: ListView.builder(
          itemCount: 10,
          reverse: true,
          itemBuilder: (context, index) {
            return ResultTile(
              isLast: index == 0,
            );
          },
        ),
      ),
    );
  }
}
