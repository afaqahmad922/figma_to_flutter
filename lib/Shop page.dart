import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class shop_Page extends StatefulWidget {
  const shop_Page({super.key});

  @override
  State<shop_Page> createState() => _shop_PageState();
}

class _shop_PageState extends State<shop_Page> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 22.w, top: 40.h),
                  child: Icon(Icons.arrow_back_ios_new),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: 18, top: 40),
                  child: Icon(Icons.shopping_cart),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 16.h, left: 16.w, right: 16.h),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: double.infinity,
                    height: 213.h,
                    child: Image.asset(
                      'assets/shoppage/shoes.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 13.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildDot(isActive: true),
                  buildDot(isActive: false),
                  buildDot(isActive: false),
                  buildDot(isActive: false),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w, top: 16.h),
              child: Text(
                "Size: 7UK",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.h),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 16.w,),
                    child: SizeOptionChip(text: '6 UK', textColor: Color(0xffF83758), FillColor: Colors.white, borderColor: Color(0xffFA7189), textSize: 14.sp, prefixIcon: null,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.w,),
                    child: SizeOptionChip(text: '7 UK', textColor: Colors.white,FillColor: Color(0xffF83758),borderColor: Color(0xffFA7189), textSize: 14.sp, prefixIcon: null,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.w,),
                    child: SizeOptionChip(text: '8 UK', textColor: Color(0xffF83758),FillColor: Colors.white,borderColor: Color(0xffFA7189), textSize: 14.sp, prefixIcon: null,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.w,),
                    child: SizeOptionChip(text: '9 UK', textColor: Color(0xffF83758),FillColor: Colors.white,borderColor: Color(0xffFA7189), textSize: 14.sp, prefixIcon: null,),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.w,),
                    child: SizeOptionChip(text: '10 UK', textColor: Color(0xffF83758),FillColor: Colors.white,borderColor: Color(0xffFA7189), textSize: 14.sp,prefixIcon: null,),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w, top: 16.h),
              child: RText(text: 'NIke Sneakers', textColor: Colors.black, textSize: 20.sp),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w, top: 8.h),
              child: RText(text: 'Vision Alta Men’s Shoes Size (All Colours)', textColor: Colors.black, textSize: 14.sp),
            ),
            Padding(
              padding:EdgeInsets.only(left: 17.5.w, top: 9.5.h),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 20,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Colors.amber,
                    size: 20,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '56890',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 17.09.w, top: 8.h),
                  child: RText(text: "₹2,999", textColor: Color(0xffBBBBBB), textSize: 14.sp, isLineThrough: true,),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w, top: 8.h),
                  child: RText(text: "₹1,500", textColor: Colors.black, textSize: 14.sp,),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 17.09.w, top: 8.h),
                  child: RText(text: "₹50% Off", textColor: Color(0xffFA7189), textSize: 14.sp, isLineThrough: false,),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.w, top: 8.h),
                  child: RText(text: 'Product Details', textColor: Colors.black, textSize: 14.sp,),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.w, top: 4.h, right: 16.w),
                  child: RichText(
                    text: TextSpan(
                      text:
                      'Perhaps the most iconic sneaker of all-time, this original "Chicago" colorway is the cornerstone to any sneaker collection. Made famous in 1985 by Michael Jordan, the shoe has stood the test of time, becoming the most famous colorway of the Air Jordan 1. This 2015 release saw the ...',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.black,
                        height: 1.4,
                      ),
                      children: [
                        TextSpan(
                          text: 'More',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffF83758),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.w, top: 8.h),
                  child: SizeOptionChip( text: 'Nearest Store', FillColor: Colors.white, textColor: Color(0xff828282), borderColor: Colors.black, textSize: 10.sp, prefixIcon: Icons.location_on),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w, top: 8.h),
                  child: SizeOptionChip( text: 'Vip', FillColor: Colors.white, textColor: Color(0xff828282), borderColor: Colors.black, textSize: 10.sp,prefixIcon: Icons.lock),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w, top: 8.h),
                  child: SizeOptionChip( text: 'Return Policy', FillColor: Colors.white, textColor: Color(0xff828282), borderColor: Colors.black, textSize: 10.sp, prefixIcon: Icons.check,),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  // method for buildDot.
  Widget buildDot({required bool isActive}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.w),
      width: isActive ? 10.w : 8.w,
      height: isActive ? 10.w : 8.w,
      decoration: BoxDecoration(
        color: isActive ? Color(0xffF83758) : Color(0xffDEDBDB),
        shape: BoxShape.circle,
      ),
    );
  }
}

class SizeOptionChip extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color FillColor;
  final Color borderColor;
  final double textSize;
  final IconData? prefixIcon;

  const SizeOptionChip ({
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
            Icon(
              prefixIcon,
              size: textSize + 4,
              color: textColor,
            ),
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

class RText extends StatelessWidget {
  final String text;
  final double textSize;
  final Color textColor;
  final bool isLineThrough;

  const RText ({
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
