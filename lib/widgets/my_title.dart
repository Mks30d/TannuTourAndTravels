import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  final String title;
  final double fontSize;
  const MyTitle({super.key, required this.title, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
    );
  }
}
