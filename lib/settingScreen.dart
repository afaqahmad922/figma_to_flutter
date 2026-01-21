import 'package:flutter/material.dart';

class settingScreen extends StatelessWidget {
  const settingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade300,
      body: Column( mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('SEARCH Screen')),
        ],
      ),
    );
  }
}
