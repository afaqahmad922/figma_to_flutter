import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SizeOptionChip extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color FillColor;
  final Color borderColor;
  final double textSize;
  final IconData? prefixIcon;

  const SizeOptionChip({
    super.key,
    required this.text,
    required this.textSize,
    required this.FillColor,
    required this.borderColor,
    required this.textColor,
    required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: FillColor,
        border: Border.all(width: 1.5, color: borderColor),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (prefixIcon != null) ...[
            Icon(prefixIcon, size: textSize + 4, color: textColor),
            SizedBox(width: 6.w),
          ],
          Text(
            text,
            style: TextStyle(
              fontSize: textSize,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}