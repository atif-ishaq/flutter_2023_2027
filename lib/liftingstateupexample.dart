import 'package:flutter/material.dart';

void main() => runApp(
  const MaterialApp(
    home: Scaffold(body: SafeArea(child: Home())),
  ),
);

// 1. Common Parent: Holds the state shared by sibling widgets
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // The state is "lifted up" here so both ProductList and Cart can access it
  final List<String> cart = [];

  void addToCart(String item) {
    setState(() {
      cart.add(item);
    });
  }

  void removeFromCart(String item) {
    setState(() {
      cart.remove(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Sibling 1: Needs to modify the state
        ProductList(onAddToCart: addToCart),
        const Divider(),
        // Sibling 2: Needs to display and modify the state
        Cart(items: cart, onRemove: removeFromCart),
      ],
    );
  }
}

// 2. Sibling Widget A: Triggers data insertion via callback
class ProductList extends StatelessWidget {
  final ValueChanged<String> onAddToCart;

  const ProductList({super.key, required this.onAddToCart});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text("Wireless Headphones"),
      subtitle: const Text("Rs. 999.00"),
      trailing: ElevatedButton(
        onPressed: () => onAddToCart("Wireless Headphones"),
        child: const Text("Add to Cart"),
      ),
    );
  }
}

// 3. Sibling Widget B: Displays data and triggers removal via callback
class Cart extends StatelessWidget {
  final List<String> items;
  final ValueChanged<String> onRemove;

  const Cart({super.key, required this.items, required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            "Cart Items: ${items.length}",
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return ListTile(
                  title: Text(item),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () => onRemove(item),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
