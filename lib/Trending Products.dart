import 'package:flutter/material.dart';
import '../widgets/product_card.dart';

import 'home_page.dart';

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

            const SizedBox(height: 30),
            SearchBarWidget(hintText: "Search any Products"),
            const SizedBox(height: 10),

            Row(
              children: [
                const Text(
                  '52,082+ Items',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const Spacer(),
                SortFilterButton(text: 'Sort', icon: Icons.swap_vert),
                const SizedBox(width: 10),
                SortFilterButton(text: "Filter", icon: Icons.filter_list),
              ],
            ),

            const SizedBox(height: 10),

            Expanded(
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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {},
          child: Icon(Icons.shopping_cart)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Home
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const HomePage()),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      size: 28,
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Home',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),

              // Wishlist
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const trending_Products()),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite_outline,
                      size: 28,
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Wishlist',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),

              // Search
              GestureDetector(
                onTap: () {
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search,
                      size: 28,
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Search',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),

              // Settings
              GestureDetector(
                onTap: () {
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.settings,
                      size: 28,
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Settings',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                      ),
                    ),
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

