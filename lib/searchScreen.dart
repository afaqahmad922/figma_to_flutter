import 'package:flutter/material.dart';

class searchScreen extends StatelessWidget {
  const searchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade200,
      body: Column( mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('SETTINGS Screen')),
        ],
      ),
    );
  }
}
