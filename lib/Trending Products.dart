import 'package:figma_to_flutter/searchScreen.dart';
import 'package:figma_to_flutter/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class trending_Products extends StatefulWidget {
  const trending_Products({super.key});

  @override
  State<trending_Products> createState() => _trending_ProductsState();
}

class _trending_ProductsState extends State<trending_Products> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFDFDFD),
      body: Column(
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

          const SizedBox(height: 10),

          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 15.w, bottom: 100.h),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.7,
                children: const [
                  ProductCard(
                    title: 'Kurta',
                    description: 'Kurta for all Seasons',
                    imageUrl: 'assets/kurta.png',
                    price: '1200',
                  ),
                  ProductCard(
                    title: 'Kurta',
                    description: 'Kurta for all Seasons',
                    imageUrl: 'assets/kurta.png',
                    price: '1200',
                  ),
                  ProductCard(
                    title: 'Kurta',
                    description: 'Kurta for all Seasons',
                    imageUrl: 'assets/kurta.png',
                    price: '1200',
                  ),
                  ProductCard(
                    title: 'Kurta',
                    description: 'Kurta for all Seasons',
                    imageUrl: 'assets/kurta.png',
                    price: '1200',
                  ),
                  ProductCard(
                    title: 'Kurta',
                    description: 'Kurta for all Seasons',
                    imageUrl: 'assets/kurta.png',
                    price: '1200',
                  ),
                  ProductCard(
                    title: 'Kurta',
                    description: 'Kurta for all Seasons',
                    imageUrl: 'assets/kurta.png',
                    price: '1200',
                  ),
                  ProductCard(
                    title: 'Kurta',
                    description: 'Kurta for all Seasons',
                    imageUrl: 'assets/kurta.png',
                    price: '1200',
                  ),
                  ProductCard(
                    title: 'Kurta',
                    description: 'Kurta for all Seasons',
                    imageUrl: 'assets/kurta.png',
                    price: '1200',
                  ),
                  ProductCard(
                    title: 'Kurta',
                    description: 'Kurta for all Seasons',
                    imageUrl: 'assets/kurta.png',
                    price: '1200',
                  ),
                  ProductCard(
                    title: 'Kurta',
                    description: 'Kurta for all Seasons',
                    imageUrl: 'assets/kurta.png',
                    price: '1200',
                  ),
                  ProductCard(
                    title: 'Kurta',
                    description: 'Kurta for all Seasons',
                    imageUrl: 'assets/kurta.png',
                    price: '1200',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
