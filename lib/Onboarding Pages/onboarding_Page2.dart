import 'package:flutter/material.dart';

import '../signIn.dart';

class onboarding2 extends StatelessWidget {
  const onboarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column( crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '2/3',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                GestureDetector( onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>signIn()));
                },
                  child: const Text(
                    'Skip',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 100,),
          Center(child: Image.asset('assets/slide2.png', height: 300, width: 400,)),
          SizedBox(height: 10,),
          Text('Make Payment', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Text('Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.')
        ],
      ),
    );
  }
}
