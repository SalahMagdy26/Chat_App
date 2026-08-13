import 'package:flutter/material.dart';

class OrdinaryText extends StatelessWidget {
  const OrdinaryText({
    super.key,
    required this.content,
    required this.size,
    required this.color,
  });
  final String content;
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: TextStyle(
          fontFamily: 'saira',
          fontSize: size,
          color: color,
      ),
    );
  }
}
