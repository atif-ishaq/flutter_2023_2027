import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override Widget build(BuildContext context) {
    // 1. The data starts here at the top level
    const String username = "Alice"; 

    return const MaterialApp(
      home: Scaffold(
        body: Center(
          // 2. We pass it to the Parent
          child: ParentWidget(name: username),
        ),
      ),
    );
  }
}

// The Parent widget accepts the data but does not use it directly
class ParentWidget extends StatelessWidget {
  final String name;
  const ParentWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    // 3. The Parent just passes it down to the Child
    return ChildWidget(name: name);
  }
}

// The Child widget also accepts the data but does not use it either
class ChildWidget extends StatelessWidget {
  final String name;
  const ChildWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    // 4. The Child passes it down to the Grandchild
    return GrandchildWidget(name: name);
  }
}

// The Grandchild widget is the one that actually needs and displays the data
class GrandchildWidget extends StatelessWidget {
  final String name;
  const GrandchildWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello, $name!',
      style: const TextStyle(fontSize: 24),
    );
  }
}
