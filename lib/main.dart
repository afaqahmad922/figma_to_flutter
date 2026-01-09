import 'package:figma_to_flutter/Onboarding_Screen.dart';
import 'package:figma_to_flutter/Splash%20Screen/splashScreen.dart';
import 'package:figma_to_flutter/home_page.dart';
import 'package:figma_to_flutter/signIn.dart';
import 'package:figma_to_flutter/signUp.dart';
import 'package:flutter/material.dart';

import 'Forgor Password.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(),
    );
  }
}

