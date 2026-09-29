import 'package:flutter/material.dart';

void main() {
  runApp(const CampusConnect2());
}

class CampusConnect2 extends StatelessWidget {
  const CampusConnect2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Campus Connect',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

// Converted to StatefulWidget to manage dynamic data
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Simple list holding our dynamic campus services
  final List<String> services = [
    'Departments',
    'Events',
    'Student Community',
    'Library'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ---------------- APP BAR ----------------
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text(
          'Campus Connect',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // ---------------- BODY ----------------
      body: Column(
        children: [
          // Welcome Banner
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Colors.blue.shade50,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome! 👋',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Campus Connect',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Everything you need on campus',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          // ---------------- SEARCH BOX ----------------
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search campus...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          // ---------------- SECTION TITLE ----------------
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Campus Services',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          // ---------------- SERVICES LIST ----------------
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              itemCount: services.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue.shade100,
                      child: const Icon(Icons.school, color: Colors.blue),
                    ),
                    title: Text(
                      services[index],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Manage ${services[index]} resources'),
                    // Remove button inside trailing slot
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.redAccent),
                      onPressed: () {
                        setState(() {
                          services.removeAt(index); // Removes item from list
                        });
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      // ---------------- FLOATING BUTTON ----------------
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        onPressed: () {
          setState(() {
            // Adds a mock new item dynamically
            services.add('New Service ${services.length + 1}');
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
