import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cake Shop',
          style: TextStyle(
              color: Color.fromARGB(255, 224, 27, 195)), // Custom text color
        ),
        backgroundColor: Color.fromARGB(255, 8, 235, 231), // Custom appbar color
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'images/backgorung.jpg'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end, // Align at the bottom
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    // Implement Home link functionality
                  },
                  child: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 73, 181, 224),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Implement Menu link functionality
                  },
                  child: Text(
                    'About',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 67, 211, 222),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Implement Contact Us link functionality
                  },
                  child: Text(
                    'Contact',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 70, 192, 230),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 20),
                  Image.asset(
                    'images/cakelogo.png',
                    height: 150,
                    width: 150,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Bite Happiness',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 49, 225, 67),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Savor the Sweetness',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 94, 225, 71),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(height: 20),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20),
                children: [
                  ProductItem(
                    name: 'Chocolate Cake',
                    price: '\$5.99',
                    imageUrl: 'images/chocolatecake.jpg',
                  ),
                  SizedBox(height: 10),
                  ProductItem(
                    name: 'Red Velvet',
                    price: '\$7.49',
                    imageUrl: 'images/redvelvet.jpg',
                  ),
                  SizedBox(height: 10),
                  ProductItem(
                    name: 'Carrot Cake',
                    price: '\$6.99',
                    imageUrl: 'images/carrotcake.jpg',
                  ),
                  SizedBox(height: 10),
                  ProductItem(
                    name: 'Strawberry Cake',
                    price: '\$19.99',
                    imageUrl: 'images/strawberrycake.jpg',
                  ),
                  SizedBox(height: 10),
                  ProductItem(
                    name: 'Marble Cake',
                    price: '\$12.99',
                    imageUrl: 'images/marblecake.jpg',
                  ),
                  SizedBox(height: 10),
                  ProductItem(
                    name: 'Black Forest Cake',
                    price: '\$10.99',
                    imageUrl: 'images/blackforest.jpg',
                  ),
                  // Add more ProductItems as needed
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String name;
  final String price;
  final String imageUrl;

  const ProductItem({
    Key? key,
    required this.name,
    required this.price,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        contentPadding: EdgeInsets.all(10),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            imageUrl,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          price,
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: IconButton(
          onPressed: () {
            // Implement add to cart functionality
          },
          icon: Icon(Icons.shopping_cart),
        ),
      ),
    );
  }
}
