import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: ParentWidget()));

// 1. Parent Widget (Manages the State)
class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  int students = 0;

  void addStudent() {
    setState(() {
      students++; // Updates the state and triggers a rebuild
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Total Students: $students', style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            // Passing the parent function as a callback argument
          ChildWidget(onAdd: addStudent), 
          ],
        ),
      ),
    );
  }
}

// 2. Child Widget (Triggers the Callback)
class ChildWidget extends StatelessWidget {
  
  // Define a property to hold the function reference from the parent
  final VoidCallback onAdd; 

  const ChildWidget({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onAdd, // Executes the function defined in the parent
      child: const Text("Add Student"),
    );
  }
}
