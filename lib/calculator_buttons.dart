import 'package:flutter/material.dart';

class CalcBtn extends StatelessWidget {
  final double? width;
  final Color? bgColor;
  final String text;
  const CalcBtn({
    super.key,
    this.width,
    this.bgColor,
    required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(20),
      width: width??101,
      color: bgColor??Colors.grey[700],
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 30,
              fontWeight: .w900,
              color: Colors.white
          ),
        ),
      ),
    );
  }
}
