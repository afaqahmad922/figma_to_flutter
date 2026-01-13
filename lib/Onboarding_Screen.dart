import 'package:figma_to_flutter/Onboarding%20Pages/onboarding_Page2.dart';
import 'package:figma_to_flutter/Onboarding%20Pages/onboarding_page1.dart';
import 'package:figma_to_flutter/Onboarding%20Pages/onboarding_page3.dart';
import 'package:figma_to_flutter/signIn.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboardingScreen extends StatefulWidget {
  const onboardingScreen({super.key});

  @override
  State<onboardingScreen> createState() => _onboardingScreenState();
}

class _onboardingScreenState extends State<onboardingScreen> {
  final PageController _controller = PageController();
  bool onlastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            onPageChanged: (index) {
              setState(() {
                onlastPage = index == 2;
              });
            },
            controller: _controller,
            children: [onboarding1(), onboarding2(), onboarding3()],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(alignment: Alignment(0, 0.85), child: Text('Prev')),
              Container(
                alignment: Alignment(0, 0.85),
                child: SmoothPageIndicator(controller: _controller, count: 3),
              ),
              onlastPage?
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>signIn()));
                },
                child: Container(
                  alignment: Alignment(0, 0.85),
                  child: Text('Done'),
                ),
              ):GestureDetector(
                onTap: () {
                  _controller.nextPage(
                    duration: (Duration(microseconds: 500)),
                    curve: Curves.easeIn,
                  );
                },
                child: Container(
                  alignment: Alignment(0, 0.85),
                  child: Text('Next'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
