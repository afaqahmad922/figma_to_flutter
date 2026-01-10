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
        child: SingleChildScrollView(
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
                          color: Colors.black.withOpacity(0.08),
                        ),
                      ],
                    ),
                    height: 40,
                    width: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Sort',
                          style: TextStyle(fontFamily: 'Montserrat'),
                        ),
                        Icon(Icons.swap_vert),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(1, 1),
                          blurRadius: 16,
                          color: Colors.black.withOpacity(0.08),
                        ),
                      ],
                    ),
                    height: 40,
                    width: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Filter',
                          style: TextStyle(fontFamily: 'Montserrat'),
                        ),
                        Icon(Icons.filter_alt_outlined),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(1, 1),
                      blurRadius: 16,
                      color: Colors.black.withOpacity(0.08),
                    ),
                  ],
                ),
                height: 110,
                width: double.infinity,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Image.asset('assets/men.png'),
                            SizedBox(height: 6),
                            Text('Men'),
                          ],
                        ),
                        SizedBox(width: 18),
                        Column(
                          children: [
                            Image.asset('assets/fashion.png'),
                            SizedBox(height: 6),
                            Text('Fashion'),
                          ],
                        ),
                        SizedBox(width: 18),
                        Column(
                          children: [
                            Image.asset('assets/kids.png'),
                            SizedBox(height: 6),
                            Text('Kids'),
                          ],
                        ),
                        SizedBox(width: 18),
                        Column(
                          children: [
                            Image.asset('assets/womens.png'),
                            SizedBox(height: 6),
                            Text('Womens'),
                          ],
                        ),
                        SizedBox(width: 18),
                        Column(
                          children: [
                            Image.asset('assets/beauty.png'),
                            SizedBox(height: 6),
                            Text('Beauty'),
                          ],
                        ),
                        SizedBox(width: 18),
                        Column(
                          children: [
                            Image.asset('assets/men.png'),
                            SizedBox(height: 6),
                            Text('Men'),
                          ],
                        ),
                        SizedBox(width: 18),
                        Column(
                          children: [
                            Image.asset('assets/fashion.png'),
                            SizedBox(height: 6),
                            Text('Fashion'),
                          ],
                        ),
                        SizedBox(width: 18),
                        Column(
                          children: [
                            Image.asset('assets/kids.png'),
                            SizedBox(height: 6),
                            Text('Kids'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/Rectangle 48.png',
                      height: 230,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                    Positioned(
                      left: 20,
                      top: 0,
                      bottom: 0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '40-50% OFF',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Now in (Product)',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'All Colors',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            height: 35,
                            width: 115,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    'Shop Now',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 4),
                                Icon(
                                  Icons.arrow_forward_sharp,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2),
              Container(
                height: 30,
                width: double.infinity,
                color: Colors.white,
                child: Image.asset('assets/dots.png', height: 10, width: 10),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff4392F9),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 80,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Deal of the Day',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '22h 55m 20s remaining',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        height: 35,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(
                                'View All',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(width: 4),
                            Icon(
                              Icons.arrow_forward_sharp,
                              color: Colors.white,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  children: [
                    Container(
                      width: 180,
                      margin: EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(1, 1),
                            blurRadius: 16,
                            color: Colors.black.withOpacity(0.08),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10),
                            ), child: Image.asset('assets/kurta.png', height: 150, width: double.infinity,fit: BoxFit.cover,),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Women Printed Kurta', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
                                const SizedBox(height: 4),
                                Text(
                                  'Neque porro quisquam est qui dolorem ipsum quia',
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                                const SizedBox(height: 6),
                                Row(
                                  children: [
                                    Text('₹1500',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold, fontSize: 14)),
                                    const SizedBox(width: 6),
                                    Text('₹2499',
                                        style: TextStyle(
                                            decoration: TextDecoration.lineThrough,
                                            fontSize: 12,
                                            color: Colors.grey)),
                                    const SizedBox(width: 6),
                                    Text('40% Off',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.redAccent)),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.amber, size: 14),
                                    Icon(Icons.star, color: Colors.amber, size: 14),
                                    Icon(Icons.star, color: Colors.amber, size: 14),
                                    Icon(Icons.star, color: Colors.amber, size: 14),
                                    Icon(Icons.star_border, color: Colors.amber, size: 14),
                                    const SizedBox(width: 4),
                                    Text('56890', style: TextStyle(fontSize: 12)),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 180,
                      margin: const EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Image
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/Shoe.png',
                              height: 150,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'HRX by Hrithik Roshan',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Neque porro quisquam est qui dolorem ipsum quia',
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                                const SizedBox(height: 6),
                                Row(
                                  children: [
                                    Text(
                                      '₹2499',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      '₹4999',
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      '50% Off',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.redAccent,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 6),
                                Row(
                                  children: [
                                    Icon(Icons.star, color: Colors.amber, size: 14),
                                    Icon(Icons.star, color: Colors.amber, size: 14),
                                    Icon(Icons.star, color: Colors.amber, size: 14),
                                    Icon(Icons.star, color: Colors.amber, size: 14),
                                    Icon(Icons.star_half, color: Colors.amber, size: 14),
                                    const SizedBox(width: 4),
                                    Text('344567', style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
