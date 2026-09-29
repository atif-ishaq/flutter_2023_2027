import 'package:flutter/material.dart';

void main() {
  runApp(const MyCounterApp());
}


// 1. The Root Widget (Stateless)
class MyCounterApp extends StatelessWidget {
  const MyCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Counter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const CounterHomePage(title: 'StatefulWidget Counter Example'),
    );
  }
}

// 2. The Stateful Widget
class CounterHomePage extends StatefulWidget {
  const CounterHomePage({super.key, required this.title});

  final String title;

  @override
  State<CounterHomePage> createState() => _CounterHomePageState();
}

// 3. The State Class (Where logic and UI live)
class _CounterHomePageState extends State<CounterHomePage> {
  // This variable holds our state (the counter value)
  int _counter = 0;

  // This function updates the state and tells Flutter to refresh the screen
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton:  FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      
    );
  }
}
