import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Socials extends StatelessWidget {
  final String imagePath;
  const Socials ({
    super.key,
    required this.imagePath,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 55.h,
      width: 55.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200],
        border: Border.all(color: Color(0xffF83758)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Image.asset(
          imagePath,
          width: 14,
          height: 14,
        ),
      ),
    );
  }
}
