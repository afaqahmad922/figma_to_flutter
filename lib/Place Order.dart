import 'package:figma_to_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class placeOrder extends StatefulWidget {
  const placeOrder({super.key});

  @override
  State<placeOrder> createState() => _placeOrderState();
}

class _placeOrderState extends State<placeOrder> {
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
                  padding: EdgeInsets.only(left: 22.0.w, top: 53.h),
                  child: Icon(Icons.arrow_back_ios_new),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 53.0.h),
                  child: RText(
                    text: 'Checkout',
                    textColor: Colors.black,
                    textSize: 18.sp,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(top: 53.0.h, right: 29.21.w),
                  child: Icon(Icons.favorite_outline),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 37.0.h, left: 17.w),
              child: Container(
                height: 153.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12.w),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.0.r),
                        child: Container(
                            child: Image.asset('assets/kurta.png', fit: BoxFit.cover, width: 123.w, height: 153.h,)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 21.w, top: 7.h),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RText(text: 'Women’s Casual Wear', textColor: Colors.black, textSize: 16.sp),
                          Padding(
                            padding: EdgeInsets.only(top: 7.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RText(text: 'Checked Single-Breasted\nBlazer', textColor: Colors.black, textSize: 13.sp),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.h),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xffF2F2F2),
                                          borderRadius: BorderRadius.circular(4.r),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(left: 6.w, top: 4.h, bottom: 4.h, right: 6.w),
                                          child: Row(
                                            children: [
                                              Text('Size', style: TextStyle(fontSize: 13.sp)),
                                              SizedBox(width: 7.w),
                                              Text('42', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
                                              SizedBox(width: 6.w),
                                              Icon(Icons.keyboard_arrow_down_outlined),
                                            ],
                                          ),
                                        ),
                                  
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 12),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0xffF2F2F2),
                                            borderRadius: BorderRadius.circular(4.r),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 6.w, top: 4.h, bottom: 4.h, right: 6.w),
                                            child: Row(
                                              children: [
                                                Text('Qty', style: TextStyle(fontSize: 13.sp)),
                                                SizedBox(width: 7.w),
                                                Text('1', style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold)),
                                                SizedBox(width: 6.w),
                                                Icon(Icons.keyboard_arrow_down_outlined),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              RText(text:'Delivery by', textColor: Colors.black, textSize: 13.sp),
                              Padding(
                                padding: EdgeInsets.only(left: 5.w),
                                child: RText(text:'10 May 2XXX', textColor: Colors.black, textSize: 16.sp),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 22.w, top: 54.h, right: 18.w),
              child: Row(
                children: [
                  Icon(Icons.local_offer_outlined, size: 25,),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: RText(text: 'Apply Coupons', textColor: Colors.black, textSize: 16.sp),
                  ),
                  Spacer(),
                  RText(text: 'Select', textColor: Color(0xffF83758), textSize: 14),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 17, top: 36.h, right: 19.h),
              child: Divider(
                thickness: 1.2,
                color: Color(0xffCACACA),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 22, top: 35.h),
              child: RText(text: 'Order Payment Details', textColor: Colors.black, textSize: 17.sp),
            ),
            Padding(
              padding: EdgeInsets.only(left: 22, top: 26.h, right: 22.w),
              child: Row(
                children: [
                  RText(text: 'Order Amounts', textColor: Colors.black, textSize: 16.sp),
                  Spacer(),
                  RText(text: '7,000.00', textColor: Colors.black, textSize: 16.sp),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 22, top: 12.h, right: 22.w),
              child: Row(
                children: [
                  RText(text: 'Convenience', textColor: Colors.black, textSize: 16.sp),
                  SizedBox(width: 14.w,),
                  RText(text: 'Know More', textColor: Color(0xffF83758), textSize: 12.sp),
                  Spacer(),
                  RText(text: 'Apply Coupon', textColor: Color(0xffF83758), textSize: 12.sp),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 22, top: 12.h, right: 22.w),
              child: Row(
                children: [
                  RText(text: 'Delivery Fee', textColor: Colors.black, textSize: 14.sp),
                  Spacer(),
                  RText(text: 'Free', textColor: Color(0xffF83758), textSize: 14.sp),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 17, top: 41.h, right: 19.h),
              child: Divider(
                thickness: 1.2,
                color: Color(0xffCACACA),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 22, top: 29.h, right: 22.w),
              child: Row(
                children: [
                  RText(text: 'Order Total', textColor: Colors.black, textSize: 16.sp),
                  Spacer(),
                  RText(text: '7,000.00', textColor: Colors.black, textSize: 16.sp),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 22, top: 29.h, right: 22.w),
              child: Row(
                children: [
                  RText(text: 'EMI Available', textColor: Colors.black, textSize: 16.sp),
                  Padding(
                    padding: EdgeInsets.only(left: 22.w),
                    child: RText(text: 'Details', textColor: Color(0xffF83758), textSize: 12.sp),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
