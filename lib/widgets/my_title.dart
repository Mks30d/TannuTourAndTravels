import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  final String title;
  final double fontSize;
  final Color? color;
  const MyTitle({
    super.key,
    required this.title,
    required this.fontSize,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );
  }
}
