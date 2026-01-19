import 'package:figma_to_flutter/signIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => _signInState();
}

class _signInState extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 63.h,
                left: 29.w,
                right: 154.w,
              ),
              child: Text(
                "Create an\nAccount",
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
                  padding: EdgeInsets.only(left: 32.w, right: 26.w, top: 33.h),
                  child: AppInputField(hintText: 'Username or Email', prefixIcon: Icons.person,),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 32.w, right: 26.w, top: 31.h),
                  child: AppInputField(hintText: 'Password', prefixIcon: Icons.lock, suffixIcon: Icons.remove_red_eye_outlined,),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 32.w, right: 26.w, top: 31.h),
                  child: AppInputField(hintText: 'Password', prefixIcon: Icons.lock, suffixIcon: Icons.remove_red_eye_outlined,),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 19.h, left: 30.w, right: 87.w),
                  child: Text(
                    'By clicking the Register button, you agree to the public offer',
                    style: TextStyle(color: Color(0xffF83758)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 38.h, left: 20.w, right: 29.w),
                  child: Button(text: 'Create Account'),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(top: 40.h, right: 96.w, left: 96.w),
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
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Create an Account',
                          style: TextStyle(color: Color(0xffF83758), fontSize: 14.sp),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>signUp()));
                          },
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                              color: Color(0xffF83758),
                              decoration: TextDecoration.underline, fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
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
