import 'package:flutter/material.dart';

void main() {
  runApp(const MyToggleApp());
}

class MyToggleApp extends StatelessWidget {
  const MyToggleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToggleText(),
    );
  }
}

class ToggleText extends StatefulWidget {
  const ToggleText({super.key});

  @override
  State<ToggleText> createState() => _ToggleTextState();
}

class _ToggleTextState extends State<ToggleText> {
  bool _isVisible = true; // Flag variable

  void _toggleVisibility() {
    setState(() {
      _isVisible = !_isVisible;
    });
  } // Fixed: Removed the stray 'i' here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Toggle Visibility')),
      body: Center( // Added: Center widget wraps Column so things don't hug the left edge
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_isVisible)
              const Text('Hello World!', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 16), // Added: Small spacing between text and button
            ElevatedButton(
              onPressed: _toggleVisibility,
              child: Text(_isVisible ? 'Hide Text' : 'Show Text'),
            ),
          ],
        ),
      ),
    );
  }
}
