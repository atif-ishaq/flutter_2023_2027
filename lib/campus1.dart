import 'package:flutter/material.dart';

void main() {
  runApp(const CampusConnect1());
}

class CampusConnect1 extends StatelessWidget {
  const CampusConnect1({super.key});

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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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

          // ---------------- SERVICES ----------------
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 15),

              children: [

                // Departments
                Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.blue.shade100,
                      child: const Icon(
                        Icons.school,
                        color: Colors.blue,
                      ),
                    ),

                    title: const Text(
                      'Departments',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    subtitle: const Text(
                      'Explore university departments',
                    ),

                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ),
                ),

                // Events
                Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.orange.shade100,
                      child: const Icon(
                        Icons.event,
                        color: Colors.orange,
                      ),
                    ),

                    title: const Text(
                      'Events',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    subtitle: const Text(
                      'View upcoming campus events',
                    ),

                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ),
                ),

                // Students
                Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.green.shade100,
                      child: const Icon(
                        Icons.people,
                        color: Colors.green,
                      ),
                    ),

                    title: const Text(
                      'Student Community',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    subtitle: const Text(
                      'Connect with other students',
                    ),

                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ),
                ),

                // Library
                Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.purple.shade100,
                      child: const Icon(
                        Icons.library_books,
                        color: Colors.purple,
                      ),
                    ),

                    title: const Text(
                      'Library',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    subtitle: const Text(
                      'Access library resources',
                    ),

                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),

      // ---------------- FLOATING BUTTON ----------------
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,

        onPressed: () {},

        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }
}
