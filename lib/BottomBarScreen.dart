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

  List screenList = [
    HomePage(),
    trending_Products(),
    settingScreen(),
    searchScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList [currentIndexValue],

      floatingActionButton: Padding(
        padding: EdgeInsets.only(top: 35.h),
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          elevation: 8,
          shape: const CircleBorder(), //
          onPressed: () {},
          child: const Icon(
            Icons.shopping_cart,
            size: 25, //
            color: Colors.black,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


      bottomNavigationBar: Container(
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
          backgroundColor: Color(0xffFFFFFF),
          selectedItemColor: Color(0xffEB3030),
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          onTap: (index){
            setState(() {
              if (index == 2) return;
              currentIndexValue = index > 2 ? index - 1 : index;
            });
          },
          currentIndex: currentIndexValue,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: "Wishlist"),
            BottomNavigationBarItem(icon: SizedBox.shrink(), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
      ),
    );
  }
}
