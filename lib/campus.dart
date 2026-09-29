import 'package:flutter/material.dart';

void main() {
  runApp(const CampusConnect());
}

class CampusConnect extends StatelessWidget {
  const CampusConnect({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Campus Connect',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Campus Connect'),
      ),

      body: Column(
        children: [

          // Welcome section
          Container(
            padding: const EdgeInsets.all(20),
            child: const Text(
              'Welcome to Campus Connect',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          // Search box
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search campus...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

          // Campus options
          Expanded(
            child: ListView(
              children: const [

                ListTile(
                  leading: Icon(Icons.school),
                  title: Text('Departments'),
                  subtitle: Text('Explore university departments'),
                ),

                ListTile(
                  leading: Icon(Icons.event),
                  title: Text('Events'),
                  subtitle: Text('View upcoming campus events'),
                ),

                ListTile(
                  leading: Icon(Icons.people),
                  title: Text('Student Community'),
                  subtitle: Text('Connect with other students'),
                ),

                ListTile(
                  leading: Icon(Icons.library_books),
                  title: Text('Library'),
                  subtitle: Text('Access library resources'),
                ),
              ],
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
