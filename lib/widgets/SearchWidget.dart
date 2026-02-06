import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class SearchWidget extends StatelessWidget {
  final String hintText;
  final IconData? suffixIcon;

  const SearchWidget({
    super.key,
    required this.hintText,
    this.suffixIcon,

  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(left: 24.w, top: 15.h, right: 24.w),
      child: Container(
        decoration: BoxDecoration(),
        child: TextField(
          decoration: InputDecoration( suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Color(0xffBBBBBB),
              fontFamily: 'Montserrat',
            ),
            filled: true,
            fillColor: Colors.white,
            contentPadding: EdgeInsets.symmetric(vertical: 14, horizontal: 16),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Color(0xffC8C8C8), width: 1),
            ),
          ),
        ),
      ),
    );
  }
}