import 'package:figma_to_flutter/Trending%20Products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/product_card.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDFDFD),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                top: 52.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/homescreen/1.png'),
                  Image.asset('assets/homescreen/2.png'),
                  Image.asset('assets/homescreen/3.png'),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                top: 16.h,
              ),
              child: SearchBarWidget( hintText: "Search any Products"),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 22.w,
                right: 21.w,
                top: 16.h,
              ),
              child: Row(
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
                  SortFilterButton(text: 'Sort', icon: Icons.swap_vert),
                  SizedBox(width: 10),
                  SortFilterButton(text: "Filter", icon: Icons.filter_list),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                top: 16.h,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(1, 1),
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
                      children: [
                        CategoryItem(imagePath: 'assets/men.png', label: 'Men'),
                        SizedBox(width: 18),
                        CategoryItem(imagePath: 'assets/fashion.png', label: 'Fashion'),
                        SizedBox(width: 18),
                        CategoryItem(imagePath: 'assets/kids.png', label: 'Kids'),
                        SizedBox(width: 18),
                        CategoryItem(imagePath: 'assets/womens.png', label: 'Womens'),
                        SizedBox(width: 18),
                        CategoryItem(imagePath: 'assets/beauty.png', label: 'Beauty'),
                        SizedBox(width: 18),
                        CategoryItem(imagePath: 'assets/men.png', label: 'Men'),
                        SizedBox(width: 18),
                        CategoryItem(imagePath: 'assets/fashion.png', label: 'Fashion'),
                        SizedBox(width: 18),
                        Padding(
                          padding: EdgeInsets.only(right: 80.w),
                          child: CategoryItem(imagePath: 'assets/kids.png', label: 'Kids'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                  left: 16.w,
                  right: 16.w,
                  top: 16.h,
                ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  children: [
                    AspectRatio(
                      aspectRatio: 343/ 189,
                      child: Image.asset(
                        'assets/Rectangle 48.png',
                        height: 230,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
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
            ),
            Padding(
              padding: EdgeInsets.only(left:158.w , right:158.w , top:12.h ),
              child: Container(
                height: 30,
                width: double.infinity,
                color: Colors.white,
                child: Image.asset('assets/dots.png', height: 10, width: 10),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                top: 16.h,
              ),
              child: Container(
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
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 19.w,
                top: 16.h,
              ),
              child: SizedBox(
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
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/kurta.png',
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
                                  'Women Printed Kurta',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Neque porro quisquam est qui dolorem ipsum quia',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                                const SizedBox(height: 6),
                                Row(
                                  children: [
                                    Text(
                                      '₹1500',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      '₹2499',
                                      style: TextStyle(
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const SizedBox(width: 6),
                                    Text(
                                      '40% Off',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.redAccent,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.amber,
                                      size: 14,
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      '56890',
                                      style: TextStyle(fontSize: 12),
                                    ),
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
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
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
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 14,
                                    ),
                                    Icon(
                                      Icons.star_half,
                                      color: Colors.amber,
                                      size: 14,
                                    ),
                                    const SizedBox(width: 4),
                                    Text(
                                      '344567',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
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
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                top: 16.h,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                height: 100,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset(
                        'assets/offer.png',
                        fit: BoxFit.cover,
                        height: 80,
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            'Special Offers  😱',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Text(
                          'We make sure you get the \noffer you need at best prices',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Montserrat',
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                top: 16.h,
              ),
              child: AspectRatio(
                aspectRatio: 343 / 172, // 👈 from Figma
                child: Image.asset(
                  'assets/mac.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                top: 16.h,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffFD6E87),
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
                            'Trending Products',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '📅 Last Date 29/02/22',
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
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                top: 16.h,
              ),
              child: SizedBox(
                height: 240,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  children: [
                    Container(
                      width: 150,
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
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/watch.png',
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
                                  'IWC Schaffhausen 2021 Pilots Watch "SIHH 2019" 44mm',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                    
                                const SizedBox(height: 6),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '₹1500',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(width: 6),
                                    Row(
                                      children: [
                                        Text(
                                          '₹2499',
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          '40% Off',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.redAccent,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 150,
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
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/shoes.png',
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
                                  'Labbin White Sneakers For Men and Female',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                    
                                const SizedBox(height: 6),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '₹650',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(width: 6),
                                    Row(
                                      children: [
                                        Text(
                                          '₹1250',
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          '70% Off',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.redAccent,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 150,
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
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: Image.asset(
                              'assets/watch.png',
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
                                  "Mammon Women's Handbag (Set of 3, Beige)",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                    
                                const SizedBox(height: 6),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '₹750',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(width: 6),
                                    Row(
                                      children: [
                                        Text(
                                          '₹1999',
                                          style: TextStyle(
                                            decoration:
                                                TextDecoration.lineThrough,
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Text(
                                          '40% Off',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.redAccent,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
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
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                top: 16.h,
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(1, 1),
                      blurRadius: 16,
                      color: Colors.black.withOpacity(0.08),
                    ),
                  ],
                ),
                clipBehavior: Clip.hardEdge,
                child: Column(
                  children: [
                    AspectRatio(
                      aspectRatio: 343/204,
                      child: Image.asset(
                        'assets/summer.png',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'New Arrivals',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Summer’ 25 Collections',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Container(
                              height: 35,
                              width: 100,
                              decoration: BoxDecoration(
                                color: Color(0xffF83758),
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
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                bottom: 16.h,
                right: 16.w,
                top: 16.h,
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(1, 1),
                      blurRadius: 16,
                      color: Colors.black.withOpacity(0.08),
                    ),
                  ],
                ),
                clipBehavior: Clip.hardEdge,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.w, top: 8.h),
                      child: Text(
                        'Sponsored',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    AspectRatio(
                      aspectRatio: 351/292,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.w, top: 8.h),
                        child: Image.asset(
                          'assets/off.png',
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.w, top: 8.h),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Upto 50% Off!',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios_rounded),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),

    );
  }
}
/// Search Bar
class SearchBarWidget extends StatelessWidget {
  final String hintText;

  const SearchBarWidget ({
    super.key, required this.hintText,
});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
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
          hintText: hintText,
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
    );
  }
}

/// Sort and Filter Small Containers
class SortFilterButton extends StatelessWidget {
  final String text;
  final IconData icon;

  const SortFilterButton ({
    super.key,
    required this.text,
    required this.icon,
});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
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
          Text( text,
            style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold)),
          Icon(icon),
        ],
      ),
    );
  }
}

/// Single category item (image + label)
class CategoryItem extends StatelessWidget {
  final String imagePath;
  final String label;

  const CategoryItem({
    super.key,
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          height: 60,
          width: 60,
          fit: BoxFit.cover,
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: const TextStyle(fontFamily: 'Montserrat', fontSize: 14),
        ),
      ],
    );
  }
}

