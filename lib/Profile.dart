import 'package:figma_to_flutter/Shop%20page.dart';
import 'package:figma_to_flutter/signIn.dart';
import 'package:figma_to_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
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
              padding: EdgeInsets.only(left: 137.w, top: 31.h, right: 135.w),
              child: Stack(
                children: [
                  // Main Profile Image
                  Container(
                    child: CircleAvatar(
                      radius: 48.r,
                      backgroundImage: AssetImage("assets/homescreen/3.png"),
                    ),
                  ),

                  // Small Edit Icon
                  Positioned(
                    bottom: -2,
                    right: -2,
                    child: Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.white, // white outer border
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.blue, // inner circle color
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.edit, size: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.0.w, top: 28.h),
              child: RText(
                text: 'Personal Details',
                textColor: Colors.black,
                textSize: 18.sp,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.0.w, top: 20.h),
              child: RText(
                text: 'Email Address',
                textColor: Colors.black,
                textSize: 12.sp,
              ),
            ),
            SearchWidget(hintText: 'Enter Email'),
            Padding(
              padding: EdgeInsets.only(left: 24.0.w, top: 28.h),
              child: RText(
                text: 'Password',
                textColor: Colors.black,
                textSize: 12.sp,
              ),
            ),
            SearchWidget(hintText: '**********'),
            Padding(
              padding: EdgeInsets.only(left: 247.w, right: 24.w, top: 14.h),
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Change Password',
                    style: TextStyle(
                      color: Color(0xffF83758),
                      fontSize: 12.sp,
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xffF83758),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 36.h),
              child: Divider(thickness: 1, color: Color(0xffC4C4C4)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 34.h, left: 24.w),
              child: RText(
                text: 'Business Address Details',
                textColor: Colors.black,
                textSize: 16.sp,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 22.h, left: 24.w),
              child: RText(
                text: 'Pinconde',
                textColor: Colors.black,
                textSize: 12.sp,
              ),
            ),
            SearchWidget(hintText: '450116'),
            Padding(
              padding: EdgeInsets.only(top: 28.h, left: 24.w),
              child: RText(
                text: 'Address',
                textColor: Colors.black,
                textSize: 12.sp,
              ),
            ),
            SearchWidget(hintText: "216 St Paul's Rd, "),
            Padding(
              padding: EdgeInsets.only(top: 28.h, left: 24.w),
              child: RText(
                text: 'City',
                textColor: Colors.black,
                textSize: 12.sp,
              ),
            ),
            SearchWidget(hintText: "London"),
            Padding(
              padding: EdgeInsets.only(top: 28.h, left: 24.w),
              child: RText(
                text: 'State',
                textColor: Colors.black,
                textSize: 12.sp,
              ),
            ),
            SearchWidget(hintText: "N1 2LL,", suffixIcon: Icons.keyboard_arrow_down_outlined,),
            Padding(
              padding: EdgeInsets.only(top: 28.h, left: 24.w),
              child: RText(
                text: 'Country',
                textColor: Colors.black,
                textSize: 12.sp,
              ),
            ),
            SearchWidget(hintText: "United Kingdom"),
            Padding(
              padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 34.h),
              child: Divider(thickness: 1, color: Color(0xffC4C4C4)),
            ),
            Padding(
              padding: EdgeInsets.only(top: 32.h, left: 24.w),
              child: RText(
                text: 'Bank Account Details',
                textColor: Colors.black,
                textSize: 16.sp,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24.h, left: 24.w),
              child: RText(
                text: 'Bank Account Number',
                textColor: Colors.black,
                textSize: 12.sp,
              ),
            ),
            SearchWidget(hintText: "204356XXXXXXX"),
            Padding(
              padding: EdgeInsets.only(top: 28.h, left: 24.w),
              child: RText(
                text: 'Account Holder Name',
                textColor: Colors.black,
                textSize: 12.sp,
              ),
            ),
            SearchWidget(hintText: "Abhiraj Sisodiya"),
            Padding(
              padding: EdgeInsets.only(top: 28.h, left: 24.w),
              child: RText(
                text: 'IFSC Code',
                textColor: Colors.black,
                textSize: 12.sp,
              ),
            ),
            SearchWidget(hintText: "SBIN00428"),
            Padding(
              padding: EdgeInsets.only(top: 34.h, left: 24.w, bottom: 57.h),
              child: Button(text: 'Save',),
            ),
          ],
        ),
      ),
    );
  }
}


