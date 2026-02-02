import 'package:figma_to_flutter/BottomBarScreen.dart';
import 'package:figma_to_flutter/Forgor%20Password.dart';
import 'package:figma_to_flutter/signUp.dart';
import 'package:figma_to_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class signIn extends StatefulWidget {
  const signIn({super.key});

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 63.h,
                left: 32.w,
                right: 158.w,
              ),
              child: Text(
                "Welcome\nBack!",
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 36.sp,
                  fontWeight: FontWeight.w700,
                  height: 43 / 36,
                  color: Colors.black,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 32.w, right: 26.w, top: 36.h),
                  child: AppInputField(hintText: 'Username or Email', prefixIcon: Icons.person,),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 32.w, right: 26.w, top: 31.h),
                  child: AppInputField(hintText: 'Password', prefixIcon: Icons.lock, suffixIcon: Icons.remove_red_eye_outlined,),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.only(left: 210.w, right: 26.w, ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector( onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>forgotPassword()));
                    },
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: Color(0xffF83758)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 32.w, right: 26.w, top: 52.h),
                  child: GestureDetector( onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottombarscreen()));
                  },

                      child: Button(text: 'Login')),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 75.h, right: 96.w, left: 96.w),
                    child: Text(
                      '-OR Continue With-',
                      style: TextStyle(color: Color(0xffF83758), fontSize: 12.sp),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: Row(
                      children: [
                        SizedBox(width: 10.w),
                        Socials(imagePath: 'assets/google.png'),
                        SizedBox(width: 10.w),
                        Socials(imagePath: 'assets/facebook.png'),
                        SizedBox(width: 10.w),
                        Socials(imagePath: 'assets/apple.png'),
                        SizedBox(width: 10.w),
                      ],
                    ),
                  ),
                ),

                Center(
                  child: Padding(
                    padding: EdgeInsets.only(right: 89.w, left: 92, top:  28.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Create an Account',
                          style: TextStyle(color: Color(0xffF83758), fontSize: 14.sp),
                        ),
                        SizedBox(width: 5.w,),
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero, //
                            minimumSize: Size(0, 0),  //
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => signUp()));
                          },
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                              color: Color(0xffF83758),
                              decoration: TextDecoration.underline,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



