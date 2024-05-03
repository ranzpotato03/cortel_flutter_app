import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('A NO RI ラーメン'),
        actions: [
          IconButton(
            icon: Icon(Icons.facebook),
            onPressed: () {
              // Implement Facebook link functionality
            },
          ),
          // Twitter IconButton removed
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end, // Align at the bottom
        children: [
          Expanded(
            child: Column(
              children: [
                Image.asset('images/ramen.png',
                    height: 80,
                    width: 80), // Replace with your logo
                Text(
                  'A BOWL OF LOVE FROM JAPANESE CUISINE FOR YOU',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Ramen is a traditional Japanese noodle soup. It consists of Chinese wheat noodles served in a meat or fish-based broth & uses toppings such as sliced pork, nori, menma, and scallions.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Implement Order Now functionality
                  },
                  child: Text('Order Now'),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  // Implement Home link functionality
                },
                child: Text('Home'),
              ),
              TextButton(
                onPressed: () {
                  // Implement Menu link functionality
                },
                child: Text('Menu'),
              ),
              TextButton(
                onPressed: () {
                  // Implement Our Story link functionality
                },
                child: Text('Our Story'),
              ),
              TextButton(
                onPressed: () {
                  // Implement Contact Us link functionality
                },
                child: Text('Contact Us'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
