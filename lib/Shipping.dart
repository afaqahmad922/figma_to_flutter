import 'package:figma_to_flutter/widgets/Button.dart';
import 'package:figma_to_flutter/widgets/Rtext.dart';
import 'package:figma_to_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class shipping extends StatefulWidget {
  const shipping({super.key});

  @override
  State<shipping> createState() => _shippingState();
}

class _shippingState extends State<shipping> {

  int currentIndex = 0;
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
                Padding(
                  padding: EdgeInsets.only(top: 53.0.h, left: 111.w),
                  child: RText(
                    text: 'Checkout',
                    textColor: Colors.black,
                    textSize: 18.sp,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 17, top: 36.h, right: 19.h),
              child: Divider(
                thickness: 1.2,
                color: Color(0xffCACACA),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 42.w, top: 17.h, right: 22.w),
              child: Row(
                children: [
                  RText(text: 'Orders', textColor: Color(0xffA8A8A9), textSize: 18.sp),
                  Spacer(),
                  Icon(Icons.currency_rupee, color: Color(0xffA8A8A9)),
                  RText(text: '7,000', textColor: Color(0xffA8A8A9), textSize: 16.sp),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 42.w, top: 18.h, right: 22.w),
              child: Row(
                children: [
                  RText(text: 'Shipping', textColor: Color(0xffA8A8A9), textSize: 18.sp),
                  Spacer(),
                  Icon(Icons.currency_rupee, color: Color(0xffA8A8A9)),
                  SizedBox(width: 4.w,),
                  RText(text: '30', textColor: Color(0xffA8A8A9), textSize: 16.sp),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 42.w, top: 18.h, right: 22.w),
              child: Row(
                children: [
                  RText(text: 'Total', textColor: Colors.black, textSize: 18.sp),
                  Spacer(),
                  Icon(Icons.currency_rupee),
                  SizedBox(width: 4.w,),
                  RText(text: '7,030', textColor: Colors.black, textSize: 16.sp),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 42, top: 22.h, right: 24.h),
              child: Divider(
                thickness: 1.2,
                color: Color(0xffCACACA),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 42, top: 28.h),
              child: RText(text: 'Payment', textColor: Colors.black, textSize: 18.sp),
            ),
            CustomCardTextField(
              imagePath: 'assets/visa 1.png',
              suffixText: '*********2109',
              borderColor: Colors.black,
            ),
            CustomCardTextField(
              imagePath: 'assets/paypal 1.png',
              suffixText: '*********2109',
              borderColor: Colors.black,
            ),
            CustomCardTextField(
              imagePath: 'assets/maestro 1.png',
              suffixText: '*********2109',
              borderColor: Colors.black,
            ),
            CustomCardTextField(
              imagePath: 'assets/Apple 1.png',
              suffixText: '*********2109',
              borderColor: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.only(left: 33.w, top: 25.h, bottom: 100.h),
              child: GestureDetector(
                  onTap: () {
                    showSuccessDialog(context);
                  },
                  child: Button(text: 'Continue')),
            )
          ],
        ),
      ),
    );
  }
}

void showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    barrierColor: Colors.black.withOpacity(0.6),
    builder: (context) {
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.of(context).pop();
      });

      return Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Center(
          child: Image.asset(
            "assets/capture.png",
            height: 250.h,
          ),
        ),
      );
    },
  );
}
