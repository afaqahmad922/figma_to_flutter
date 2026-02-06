import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class stackRectangle extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;

  stackRectangle ({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          padding: EdgeInsets.only(left: 48.w,top: 8.h, right: 8.w, bottom: 8.h),
          decoration: BoxDecoration(
            color: color, // blue
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              bottomLeft: Radius.circular(20.r),
              topRight: Radius.circular(4.r),
              bottomRight: Radius.circular(4.r),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

        // 🔹 Circular floating icon
        Container(
          width: 44.w,
          height: 44.h,
          decoration: BoxDecoration(
            color: color, // darker blue
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 20.sp,
          ),
        ),
      ],
    );
  }
}
