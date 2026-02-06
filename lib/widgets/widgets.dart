import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




class CustomCardTextField extends StatelessWidget {
  final String imagePath;
  final String suffixText;
  final Color borderColor;

  const CustomCardTextField({
    super.key,
    required this.imagePath,
    required this.suffixText,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w, top: 15.h, right: 24.w),
      child: Container(
        child: TextField(
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 20.w, top: 20.h, bottom: 20.h),
              child: Image.asset(
                imagePath,
                width: 60,
                height: 20,
              ),
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.only(right: 12.w, top: 14.h),
              child: Text(
                suffixText,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            filled: true,
            fillColor: Color(0xffF4F4F4),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: borderColor, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: borderColor, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: borderColor, width: 1),
            ),
          ),
        ),
      ),
    );
  }
}