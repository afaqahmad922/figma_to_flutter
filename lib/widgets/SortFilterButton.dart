import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SortFilterButton extends StatelessWidget {
  final String text;
  final IconData? icon;   // made nullable

  const SortFilterButton({
    super.key,
    required this.text,
    this.icon,            // optional now
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(1, 1),
            blurRadius: 16,
            color: Colors.black.withOpacity(0.08),
          ),
        ],
      ),
      height: 40,
      width: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
            ),
          ),

          // only show icon if provided
          if (icon != null) ...[
            SizedBox(width: 4),
            Icon(icon),
          ],
        ],
      ),
    );
  }
}
