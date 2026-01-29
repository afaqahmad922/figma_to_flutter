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
                    borderRadius: BorderRadius.circular(6.r),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.12), // lighter
                        blurRadius: 6,                         // smaller blur
                        offset: Offset(0, 3),                  // smaller offset
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08), // even lighter
                        blurRadius: 4,                         // smaller blur
                        offset: Offset(0, -2),                 // smaller offset
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
                    borderRadius: BorderRadius.circular(6.r),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.12),
                        blurRadius: 6,
                        offset: Offset(0, 3),
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 4,
                        offset: Offset(0, -2),
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
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 22.w, top: 24.h),
            child: RText(text: 'Shopping List', textColor: Colors.black, textSize: 14.sp),
          ),
            Padding(
              padding: EdgeInsets.only(left: 22.w, top: 10.h, right: 22.w),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.12), // lighter
                      blurRadius: 6,                         // smaller blur
                      offset: Offset(0, 3),                  // smaller offset
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08), // even lighter
                      blurRadius: 4,                         // smaller blur
                      offset: Offset(0, -2),                 // smaller offset
                    ),
                  ],
                ),

                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.w, top: 10.h, bottom: 10.h),
                          child: SizedBox(
                            width: 130.5.w,
                            height: 125.h,
                            child: Image.asset(
                              'assets/kurta.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        // DETAILS
                        Padding(
                          padding: EdgeInsets.only(left: 8.47.w, top: 17.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              RText(
                                text: 'Women’s Casual Wear',
                                textColor: Colors.black,
                                textSize: 14.sp,
                              ),

                              // Variations
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.47.w, top: 5.h),
                                    child: RText(
                                      text: 'Variations :',
                                      textColor: Colors.black,
                                      textSize: 14.sp,
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(left: 8.w, top: 10.h),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xff0E0808)),
                                        borderRadius: BorderRadius.circular(2.r),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: RText(
                                          text: 'Black',
                                          textColor: Colors.black,
                                          textSize: 10.sp,
                                        ),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(left: 5.w, top: 8.h),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xff0E0808)),
                                        borderRadius: BorderRadius.circular(2.r),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: RText(
                                          text: 'Red',
                                          textColor: Colors.black,
                                          textSize: 10.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              // Rating
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.47.w, top: 7.h),
                                    child: RText(
                                      text: '4.7',
                                      textColor: Colors.black,
                                      textSize: 12.sp,
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(left: 5.17.w, top: 7.h),
                                    child: Row(
                                      children: [
                                        Icon(Icons.star, color: Colors.amber, size: 20),
                                        Icon(Icons.star, color: Colors.amber, size: 20),
                                        Icon(Icons.star, color: Colors.amber, size: 20),
                                        Icon(Icons.star, color: Colors.amber, size: 20),
                                        Icon(Icons.star_border, color: Colors.amber, size: 20),
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              // Price Row
                              Padding(
                                padding: EdgeInsets.only(left: 8.47.w, top: 7.h),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Color(0xff0E0808)),
                                        borderRadius: BorderRadius.circular(2.r),
                                      ),
                                      child: RText(
                                        text: "\$ 34.00",
                                        textColor: Colors.black,
                                        textSize: 20.sp,
                                      ),
                                    ),

                                    SizedBox(width: 10.w),

                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        RText(
                                          text: 'upto 33% off',
                                          textColor: Color(0xffEB3030),
                                          textSize: 10.sp,
                                        ),
                                        RText(
                                          text: '\$ 64.00',
                                          textColor: Colors.black,
                                          textSize: 12.sp,
                                          isLineThrough: true,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(left: 12, top: 10.h, right: 12.h),
                      child: Divider(
                        thickness: 1,
                        color: Color(0xffC6C6C6),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 12.w, top: 12.h, bottom: 10.h),
                          child: RText(text: 'Total Order (1) :', textColor: Colors.black, textSize: 12.sp),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.only(right: 10.w, top: 12.h, bottom: 10.h),
                          child: RText(text: '\$ 34.00', textColor: Colors.black, textSize: 12.sp),
                        ),

                      ],
                    )
                  ],
                ),
              ),
            ),
          Padding(
            padding: EdgeInsets.only(left: 22.w, top: 10.h, right: 22.w),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.12), // lighter
                    blurRadius: 6,                         // smaller blur
                    offset: Offset(0, 3),                  // smaller offset
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08), // even lighter
                    blurRadius: 4,                         // smaller blur
                    offset: Offset(0, -2),                 // smaller offset
                  ),
                ],
              ),

              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w, top: 10.h, bottom: 10.h),
                        child: SizedBox(
                          width: 130.5.w,
                          height: 125.h,
                          child: Image.asset(
                            'assets/jacket.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      // DETAILS
                      Padding(
                        padding: EdgeInsets.only(left: 8.47.w, top: 17.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            RText(
                              text: "Men's Jacket",
                              textColor: Colors.black,
                              textSize: 14.sp,
                            ),

                            // Variations
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 8.47.w, top: 5.h),
                                  child: RText(
                                    text: 'Variations :',
                                    textColor: Colors.black,
                                    textSize: 14.sp,
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(left: 8.w, top: 10.h),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff0E0808)),
                                      borderRadius: BorderRadius.circular(2.r),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: RText(
                                        text: 'Green',
                                        textColor: Colors.black,
                                        textSize: 10.sp,
                                      ),
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(left: 5.w, top: 8.h),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff0E0808)),
                                      borderRadius: BorderRadius.circular(2.r),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: RText(
                                        text: 'Grey',
                                        textColor: Colors.black,
                                        textSize: 10.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // Rating
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 8.47.w, top: 7.h),
                                  child: RText(
                                    text: '4.7',
                                    textColor: Colors.black,
                                    textSize: 12.sp,
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(left: 5.17.w, top: 7.h),
                                  child: Row(
                                    children: [
                                      Icon(Icons.star, color: Colors.amber, size: 20),
                                      Icon(Icons.star, color: Colors.amber, size: 20),
                                      Icon(Icons.star, color: Colors.amber, size: 20),
                                      Icon(Icons.star, color: Colors.amber, size: 20),
                                      Icon(Icons.star_border, color: Colors.amber, size: 20),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            // Price Row
                            Padding(
                              padding: EdgeInsets.only(left: 8.47.w, top: 7.h),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xff0E0808)),
                                      borderRadius: BorderRadius.circular(2.r),
                                    ),
                                    child: RText(
                                      text: "\$ 45.00",
                                      textColor: Colors.black,
                                      textSize: 20.sp,
                                    ),
                                  ),

                                  SizedBox(width: 10.w),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      RText(
                                        text: 'upto 28% off',
                                        textColor: Color(0xffEB3030),
                                        textSize: 10.sp,
                                      ),
                                      RText(
                                        text: '\$ 67.00',
                                        textColor: Colors.black,
                                        textSize: 12.sp,
                                        isLineThrough: true,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 12, top: 10.h, right: 12.h),
                    child: Divider(
                      thickness: 1,
                      color: Color(0xffC6C6C6),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12.w, top: 12.h, bottom: 10.h),
                        child: RText(text: 'Total Order (1) :', textColor: Colors.black, textSize: 12.sp),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 10.w, top: 12.h, bottom: 10.h),
                        child: RText(text: '\$ 45.00', textColor: Colors.black, textSize: 12.sp),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
