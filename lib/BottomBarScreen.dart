import 'package:figma_to_flutter/Shipping.dart';
import 'package:figma_to_flutter/searchScreen.dart';
import 'package:figma_to_flutter/settingScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Trending Products.dart';
import 'home_page.dart';

class Bottombarscreen extends StatefulWidget {
  const Bottombarscreen({super.key});

  @override
  State<Bottombarscreen> createState() => _BottombarscreenState();
}

class _BottombarscreenState extends State<Bottombarscreen> {
  int currentIndexValue = 0;

  var screenList = [
    HomePage(),
    trending_Products(),
    settingScreen(),
    searchScreen(),
    shipping(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          // Active Page
          IndexedStack(
            index: currentIndexValue,
            children: screenList,
          ),

          // Bottom Nav Bar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.white,
                selectedItemColor: Color(0xffEB3030),
                unselectedItemColor: Colors.black,
                showUnselectedLabels: true,
                currentIndex: currentIndexValue,
                onTap: (index) {
                  setState(() {
                    if (index == 2) return;
                    currentIndexValue = index > 2 ? index - 1 : index;
                  });
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: "Home"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.favorite_outline),
                      label: "Wishlist"),
                  BottomNavigationBarItem(
                      icon: SizedBox.shrink(), label: ""),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search), label: "Search"),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.settings), label: "Settings"),
                ],
              ),
            ),
          ),

          // Floating Cart Button
          Positioned(
            bottom: 20.h,
            left: MediaQuery
                .of(context)
                .size
                .width / 2 - 28.w,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndexValue = 4;
                });
              },
              child: Container(
                width: 56.w,
                height: 56.w,
                decoration: BoxDecoration(
                  color: Color(0xffEB3030),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.white,
                  size: 26.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}