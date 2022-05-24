import 'package:flutter/material.dart';

class IconFont extends StatelessWidget {

  Color? color;
  double? size;
  String? iconName;

  IconFont({ this.color, this.size, this.iconName });

  @override
  Widget build(BuildContext context) {
    return Text(iconName!,
        style: TextStyle(
            color: color,
            fontSize: size,
        )
    );
  }
}