import 'package:figma_to_flutter/BottomBarScreen.dart';
import 'package:figma_to_flutter/Place%20Order.dart';
import 'package:figma_to_flutter/Profile.dart';
import 'package:figma_to_flutter/Shipping.dart';
import 'package:figma_to_flutter/Shop%20page.dart';
import 'package:figma_to_flutter/Splash%20Screen/splashScreen.dart';
import 'package:figma_to_flutter/Trending%20Products.dart';
import 'package:figma_to_flutter/checkout.dart';
import 'package:figma_to_flutter/home_page.dart';
import 'package:figma_to_flutter/settingScreen.dart';
import 'package:figma_to_flutter/signIn.dart';
import 'package:figma_to_flutter/signUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Forgor Password.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: HomePage(),
      ),
    );
  }
}

