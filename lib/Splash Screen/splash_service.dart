import 'dart:async';

import 'package:figma_to_flutter/Onboarding_Screen.dart';
import 'package:figma_to_flutter/signIn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashServices {
  void Splash(BuildContext context){
    Timer(Duration(seconds: 2), ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>onboardingScreen())));
  }
}