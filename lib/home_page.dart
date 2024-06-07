import 'package:flutter/material.dart';
import 'package:cortel_flutter_app/app_color.dart';
import 'package:cortel_flutter_app/cart_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<ProductItem> _cartItems = [];

  void _addItemToCart(ProductItem item) {
    setState(() {
      _cartItems.add(item);
    });
  }

  void _navigateToCart() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CartPage(initialCartItems: _cartItems),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.shopping_basket),
                onPressed: _navigateToCart,
              ),
              if (_cartItems.isNotEmpty)
                Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: Text(
                      '${_cartItems.length}',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
        ],
        title: Text(
          'Cake Shop',
          style: TextStyle(color: AppColor.font), // Custom text color
        ),
        backgroundColor: AppColor.primary, // Custom appbar color
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/backgorung.jpg'), // Replace with your image path
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
                      color: AppColor.font4,
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
                      color: AppColor.font4,
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
                      color: AppColor.font4,
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
                      color: AppColor.font3,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Savor the Sweetness',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColor.font3,
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
                    onAddToCart: _addItemToCart,
                  ),
                  SizedBox(height: 10),
                  ProductItem(
                    name: 'Red Velvet',
                    price: '\$7.49',
                    imageUrl: 'images/redvelvet.jpg',
                    onAddToCart: _addItemToCart,
                  ),
                  SizedBox(height: 10),
                  ProductItem(
                    name: 'Carrot Cake',
                    price: '\$6.99',
                    imageUrl: 'images/carrotcake.jpg',
                    onAddToCart: _addItemToCart,
                  ),
                  SizedBox(height: 10),
                  ProductItem(
                    name: 'Strawberry Cake',
                    price: '\$19.99',
                    imageUrl: 'images/strawberrycake.jpg',
                    onAddToCart: _addItemToCart,
                  ),
                  SizedBox(height: 10),
                  ProductItem(
                    name: 'Marble Cake',
                    price: '\$12.99',
                    imageUrl: 'images/marblecake.jpg',
                    onAddToCart: _addItemToCart,
                  ),
                  SizedBox(height: 10),
                  ProductItem(
                    name: 'Black Forest Cake',
                    price: '\$10.99',
                    imageUrl: 'images/blackforest.jpg',
                    onAddToCart: _addItemToCart,
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
  final Function(ProductItem) onAddToCart;

  const ProductItem({
    Key? key,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.onAddToCart,
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
            color: AppColor.font3,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: IconButton(
          onPressed: () {
            onAddToCart(this);
          },
          icon: Icon(Icons.shopping_cart),
        ),
      ),
    );
  }
}