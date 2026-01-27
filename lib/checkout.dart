import 'package:figma_to_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class checkout extends StatefulWidget {
  const checkout({super.key});

  @override
  State<checkout> createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDFDFD),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 22.0.w, top: 47.h),
                child: Icon(Icons.arrow_back_ios_new),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 142.w, top: 47.0.h),
                child: RText(
                  text: 'Checkout',
                  textColor: Colors.black,
                  textSize: 18.sp,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 18.h),
            child: Divider( thickness: 1, color: Color(0xffC6C6C6)),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 22.h, left: 22.w),
                child: Icon(Icons.location_on_outlined,),
              ),
              Padding(
                padding: EdgeInsets.only(top: 18.h, left: 8.w),
                child: RText(text: "Delivery Address", textColor: Colors.black, textSize: 15.sp),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.h, left: 22.w),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 14,          // from 14px
                        offset: Offset(0, 6),    // y: 6px
                      ),
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 9,           // from 9px
                        offset: Offset(0, -4),   // y: -4px
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 12.h, left: 12.w),
                            child: RText(text: 'Address :', textColor: Colors.black, textSize: 12.sp),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.h, right: 8, left: 153.w),
                            child: Icon(Icons.edit_note_sharp),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 4.h, left: 12.w, bottom: 12.h),
                        child: RText(text: "216 St Paul's Rd, London N1 2LL, UK\nContact : +44-784232", textColor: Colors.black, textSize: 12.sp),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h, left: 12.w),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 14,          // from 14px
                        offset: Offset(0, 6),    // y: 6px
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        blurRadius: 9,           // from 9px
                        offset: Offset(0, -4),   // y: -4px
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 27.h,
                      left: 27.w,
                      right: 27.w,
                      bottom: 28.w,
                    ),
                    child: Icon(Icons.add, size: 24),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
