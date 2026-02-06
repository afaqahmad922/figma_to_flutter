import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AppInputField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final IconData? suffixIcon;

  const AppInputField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 317.w,
      child: TextField(
        style: TextStyle(
          fontSize: 14.sp.clamp(14, 18),
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14.sp.clamp(14, 18)),
          prefixIcon: Icon(prefixIcon, size: 20.sp.clamp(16, 24)),
          suffixIcon: suffixIcon != null
              ? Icon(suffixIcon, size: 20.sp.clamp(16, 24))
              : null,
          contentPadding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(width: 1.w, color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(width: 1.w, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
