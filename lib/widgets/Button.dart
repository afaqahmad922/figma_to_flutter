import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Button extends StatelessWidget {
  final String text;

  const Button ({
    super.key,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 55.w,
      width: 317.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        color: Color(0xffF83758),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 23,
        ),
      ),
    );
  }
}
