import 'package:flutter/material.dart';

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
        child: Container(
          color: Colors.white,
          height: 60, width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.home),
                    Text('Home', style: TextStyle(fontFamily: 'Montserrat'),),
                  ],
                ),
                Column( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite_outline, color: Colors.red,),
                    Text('Wishlist', style: TextStyle(fontFamily: 'Montserrat', color: Colors.red),),
                  ],
                ),
                Column( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.search),
                    Text('Search', style: TextStyle(fontFamily: 'Montserrat'),),
                  ],
                ),
                Column( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.settings),
                    Text('Settings', style: TextStyle(fontFamily: 'Montserrat'),),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final String price;

  const ProductCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
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
              imageUrl,
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
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 6),
                Text(
                  price,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                const SizedBox(width: 6),
                Row(
                  children: const [
                    Icon(Icons.star, color: Colors.amber, size: 14),
                    Icon(Icons.star, color: Colors.amber, size: 14),
                    Icon(Icons.star, color: Colors.amber, size: 14),
                    Icon(Icons.star, color: Colors.amber, size: 14),
                    Icon(Icons.star_half, color: Colors.amber, size: 14),
                    SizedBox(width: 4),
                    Text('344,567', style: TextStyle(fontSize: 12)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
