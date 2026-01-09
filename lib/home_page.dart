import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDFDFD),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/homescreen/1.png'),
                Image.asset('assets/homescreen/2.png'),
                Image.asset('assets/homescreen/3.png'),
              ],
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: 9,
                    spreadRadius: 0,
                    color: Colors.black.withOpacity(0.04), // #0000000A
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search any Product..',
                  hintStyle: TextStyle(
                    color: Color(0xffBBBBBB),
                    fontFamily: 'Montserrat',
                  ),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.keyboard_voice_outlined),
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 16,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'All Products',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(1, 1),
                            blurRadius: 16,
                            color: Colors.black.withOpacity(0.08)
                        )
                      ]
                  ),
                  height: 40,
                  width: 70,
                  child: Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Sort', style: TextStyle(fontFamily: 'Montserrat'),),
                      Icon(Icons.swap_vert)
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(1, 1),
                        blurRadius: 16,
                        color: Colors.black.withOpacity(0.08)
                      )
                    ]
                  ),
                  height: 40,
                  width: 70,
                  child: Row( mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Filter', style: TextStyle(fontFamily: 'Montserrat'),),
                      Icon(Icons.filter_alt_outlined),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
