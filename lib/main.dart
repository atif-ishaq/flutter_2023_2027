import 'package:flutter/material.dart';
import 'package:flutter_application_se/campus1.dart';
//import 'package:flutter_application_se/page.dart';
import 'package:flutter_application_se/signinsf.dart';

void main() {
  //runApp(PageViewExample());
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/login': (context) => const MySignInApp(), // Registered login route
      },
    ),
  );
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My App'),),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            child: Text('Go to Login Page'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CampusConnect1()),
              );
            },
            child: Text('Go to Campus Connect'),
          ),
        ],
      ),
    );
  }
}
