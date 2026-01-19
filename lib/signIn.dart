import 'package:figma_to_flutter/Forgor%20Password.dart';
import 'package:figma_to_flutter/signUp.dart';
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
                  child: Button(text: 'Login'),
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

class AppInputField extends StatelessWidget {
  final String hintText;
  final IconData prefixIcon;
  final IconData? suffixIcon;

  const AppInputField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 317.w,
      child: TextField(
        style: TextStyle(
          fontSize: 14.sp.clamp(14, 18),
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14.sp.clamp(14, 18)),
          prefixIcon: Icon(prefixIcon, size: 20.sp.clamp(16, 24)),
          suffixIcon: suffixIcon != null
              ? Icon(suffixIcon, size: 20.sp.clamp(16, 24))
              : null,
          contentPadding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(width: 1.w, color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
            borderSide: BorderSide(width: 1.w, color: Colors.black),
          ),
        ),
      ),
    );
  }
}


class Button extends StatelessWidget {
  final String text;

  const Button ({
    super.key,
    required this.text,
});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 55.w,
      width: 317.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        color: Color(0xffF83758),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 23,
        ),
      ),
    );
  }
}

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

