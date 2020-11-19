import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  final Axis axis; //方向
  final Color color;
  final int count;
  final double width;
  final double hight;

  DashedLine({
    this.axis = Axis.horizontal,
    this.count = 1,
    this.color = Colors.grey,
    this.width = 1,
    this.hight = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Flex(
        direction: axis,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(count, (_) {
          return SizedBox(
            width: width,
            height: hight,
            child: DecoratedBox(
                decoration: BoxDecoration(
              color: color,
            )),
          );
        }));
  }
}
