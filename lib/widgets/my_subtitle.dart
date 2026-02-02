import 'package:flutter/material.dart';

class MySubtitle extends StatelessWidget {
  final String title;
  final double fontSize;
  final Color? color;
  const MySubtitle({
    super.key,
    required this.title,
    required this.fontSize,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 680),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: color!.withValues(alpha: 0.9),
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
