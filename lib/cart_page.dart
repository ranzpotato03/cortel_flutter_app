import 'package:flutter/material.dart';
import 'package:cortel_flutter_app/app_color.dart';
import 'package:cortel_flutter_app/home_page.dart';

class CartPage extends StatefulWidget {
  final List<ProductItem> initialCartItems;

  const CartPage({Key? key, required this.initialCartItems}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late Map<ProductItem, int> cartItems;

  @override
  void initState() {
    super.initState();
    cartItems = {};
    for (var item in widget.initialCartItems) {
      cartItems[item] = (cartItems[item] ?? 0) + 1;
    }
  }

  void _incrementItemQuantity(ProductItem item) {
    setState(() {
      cartItems[item] = (cartItems[item] ?? 0) + 1;
    });
  }

  void _decrementItemQuantity(ProductItem item) {
    setState(() {
      if (cartItems[item] != null && cartItems[item]! > 1) {
        cartItems[item] = cartItems[item]! - 1;
      } else {
        cartItems.remove(item);
      }
    });
  }

  void _removeItem(ProductItem item) {
    setState(() {
      cartItems.remove(item);
    });
  }

  double get totalPrice => cartItems.entries.fold(
      0,
      (sum, entry) =>
          sum + (double.parse(entry.key.price.substring(1)) * entry.value));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Cart',
          style: TextStyle(color: AppColor.black, fontWeight: FontWeight.bold, fontSize: 25), // Custom text color
        ),
        backgroundColor: AppColor.primary, // Custom appbar color
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems.keys.elementAt(index);
                final quantity = cartItems[item]!;
                return Card(
                  elevation: 5,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(10),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        item.imageUrl,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      item.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      '${item.price} x$quantity',
                      style: TextStyle(
                        color: AppColor.font3,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () => _decrementItemQuantity(item),
                          icon: Icon(Icons.remove),
                        ),
                        IconButton(
                          onPressed: () => _incrementItemQuantity(item),
                          icon: Icon(Icons.add),
                        ),
                        IconButton(
                          onPressed: () => _removeItem(item),
                          icon: Icon(Icons.delete),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                // Implement checkout functionality
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Checkout'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Items:'),
                          ...cartItems.entries.map((entry) => ListTile(
                                title: Text(entry.key.name),
                                trailing: Text('${entry.key.price} x${entry.value}'),
                              )),
                          Divider(),
                          ListTile(
                            title: Text('Total'),
                            trailing: Text('\$${totalPrice.toStringAsFixed(2)}'),
                          ),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            // Implement your checkout logic here
                            Navigator.of(context).pop();
                          },
                          child: Text('Yes'),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                iconColor: AppColor.primary, // Custom button color
                 // Custom text color
                padding: EdgeInsets.symmetric(vertical: 16),
                textStyle: TextStyle(color: AppColor.font,fontSize: 18),
              ),
              child: Text('Checkout'),
            ),
          ),
        ],
      ),
    );
  }
}
