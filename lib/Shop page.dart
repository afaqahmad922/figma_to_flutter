import 'package:figma_to_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_page.dart';

class shop_Page extends StatefulWidget {
  const shop_Page({super.key});

  @override
  State<shop_Page> createState() => _shop_PageState();
}

class _shop_PageState extends State<shop_Page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDFDFD),
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
                    padding: EdgeInsets.only(left: 16.w),
                    child: SizeOptionChip(
                      text: '6 UK',
                      textColor: Color(0xffF83758),
                      FillColor: Colors.white,
                      borderColor: Color(0xffFA7189),
                      textSize: 14.sp,
                      prefixIcon: null,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: SizeOptionChip(
                      text: '7 UK',
                      textColor: Colors.white,
                      FillColor: Color(0xffF83758),
                      borderColor: Color(0xffFA7189),
                      textSize: 14.sp,
                      prefixIcon: null,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: SizeOptionChip(
                      text: '8 UK',
                      textColor: Color(0xffF83758),
                      FillColor: Colors.white,
                      borderColor: Color(0xffFA7189),
                      textSize: 14.sp,
                      prefixIcon: null,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: SizeOptionChip(
                      text: '9 UK',
                      textColor: Color(0xffF83758),
                      FillColor: Colors.white,
                      borderColor: Color(0xffFA7189),
                      textSize: 14.sp,
                      prefixIcon: null,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.w),
                    child: SizeOptionChip(
                      text: '10 UK',
                      textColor: Color(0xffF83758),
                      FillColor: Colors.white,
                      borderColor: Color(0xffFA7189),
                      textSize: 14.sp,
                      prefixIcon: null,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w, top: 16.h),
              child: RText(
                text: 'NIke Sneakers',
                textColor: Colors.black,
                textSize: 20.sp,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w, top: 8.h),
              child: RText(
                text: 'Vision Alta Men’s Shoes Size (All Colours)',
                textColor: Colors.black,
                textSize: 14.sp,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 17.5.w, top: 9.5.h),
              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  Icon(Icons.star, color: Colors.amber, size: 20),
                  Icon(Icons.star_border, color: Colors.amber, size: 20),
                  const SizedBox(width: 4),
                  Text('56890', style: TextStyle(fontSize: 14.sp)),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 17.09.w, top: 8.h),
                  child: RText(
                    text: "₹2,999",
                    textColor: Color(0xffBBBBBB),
                    textSize: 14.sp,
                    isLineThrough: true,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w, top: 8.h),
                  child: RText(
                    text: "₹1,500",
                    textColor: Colors.black,
                    textSize: 14.sp,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 17.09.w, top: 8.h),
                  child: RText(
                    text: "₹50% Off",
                    textColor: Color(0xffFA7189),
                    textSize: 14.sp,
                    isLineThrough: false,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.w, top: 8.h),
                  child: RText(
                    text: 'Product Details',
                    textColor: Colors.black,
                    textSize: 14.sp,
                  ),
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
                  child: SizeOptionChip(
                    text: 'Nearest Store',
                    FillColor: Colors.white,
                    textColor: Color(0xff828282),
                    borderColor: Colors.black,
                    textSize: 10.sp,
                    prefixIcon: Icons.location_on,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w, top: 8.h),
                  child: SizeOptionChip(
                    text: 'Vip',
                    FillColor: Colors.white,
                    textColor: Color(0xff828282),
                    borderColor: Colors.black,
                    textSize: 10.sp,
                    prefixIcon: Icons.lock,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w, top: 8.h),
                  child: SizeOptionChip(
                    text: 'Return Policy',
                    FillColor: Colors.white,
                    textColor: Color(0xff828282),
                    borderColor: Colors.black,
                    textSize: 10.sp,
                    prefixIcon: Icons.check,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.w, top: 12.h),
                  child: stackRectangle(text: 'Go to Cart', icon: Icons.shopping_cart_outlined, color: Color(0xff3F92FF)),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 12.w, top: 12.h),
                  child: stackRectangle(text: 'Buy Now', icon: Icons.touch_app_outlined, color: Color(0xff31B769)),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.w, top: 16.h, right: 13.w),
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xffFFCCD5),
                  borderRadius: BorderRadius.circular(5.r)
                ),
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 26.w, top: 11.h,),
                      child: RText(text: 'Delievery in', textColor: Colors.black, textSize: 14)
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 27.w, top: 6.h, bottom: 11.h),
                      child: RText(text: '1 within Hour', textColor: Colors.black, textSize: 21.sp)
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16.h, left: 4.w),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration( border: Border.all(color: Color(0xffD9D9D9)),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 12.h, left: 16.w, bottom: 16.h),
                          child: Icon(Icons.remove_red_eye),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 16.h, left: 8.w, bottom: 16.h, right: 43.w),
                          child: RText(text: 'View Similar', textColor: Colors.black, textSize: 14.sp)
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 3.w,),
                  Container(
                    padding: EdgeInsets.only(left: 3.w, right: 13.w),
                    decoration: BoxDecoration( border: Border.all(color: Color(0xffD9D9D9)),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 12.h, left: 16.w, bottom: 16.h),
                          child: Icon(Icons.phone_android_outlined),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 16.h, bottom: 16.h),
                          child: RText(text: 'Add to Compare', textColor: Colors.black, textSize: 14.sp)
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w, top: 20.h),
              child: RText(text: 'Similar To', textColor: Colors.black, textSize: 20.sp),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.w, top: 9.h),
                  child: RText(text: '282+ Iteams', textColor: Colors.black, textSize: 18)
                ),
                Spacer(),
                SortFilterButton(text: 'Sort', icon: Icons.swap_vert),
                SizedBox(width: 10),
                Padding(
                  padding: EdgeInsets.only(right: 21.w),
                  child: SortFilterButton(text: "Filter", icon: Icons.filter_list),
                ),
              ],
            ),
            SingleChildScrollView(
               scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(left: 16.w, top: 18.h),
                child: Row(
                  children: [
                    ProductCard(
                      title: 'Kurta',
                      description: 'Kurta for all Seasons',
                      imageUrl: 'assets/kurta.png',
                      price: '1200',
                    ),
                    Row(
                      children: [
                        ProductCard(
                          title: 'Kurta',
                          description: 'Kurta for all Seasons',
                          imageUrl: 'assets/kurta.png',
                          price: '1200',
                        ),
                        Row(
                          children: [
                            ProductCard(
                              title: 'Kurta',
                              description: 'Kurta for all Seasons',
                              imageUrl: 'assets/kurta.png',
                              price: '1200',
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 70.h,),
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


