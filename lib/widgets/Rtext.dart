import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class RText extends StatelessWidget {
  final String text;
  final double textSize;
  final Color textColor;
  final bool isLineThrough;

  const RText({
    super.key,
    required this.text,
    required this.textColor,
    required this.textSize,
    this.isLineThrough = false,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Montserrat',
        fontWeight: FontWeight.bold,
        fontSize: textSize,
        color: textColor,
        decoration: isLineThrough
            ? TextDecoration.lineThrough
            : TextDecoration.none,
      ),
    );
  }
}