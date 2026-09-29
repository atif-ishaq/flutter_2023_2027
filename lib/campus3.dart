import 'package:flutter/material.dart';

void main() {
  runApp(const CampusConnect3());
}

class CampusConnect3 extends StatelessWidget {
  const CampusConnect3({super.key});

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

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Changed to a list of Maps to store custom titles and subtitles together
  final List<Map<String, String>> services = [
    {'title': 'Departments', 'subtitle': 'Explore university departments'},
    {'title': 'Events', 'subtitle': 'View upcoming campus events'},
    {'title': 'Student Community', 'subtitle': 'Connect with other students'},
    {'title': 'Library', 'subtitle': 'Access library resources'},
  ];

  // Function to show input popup dialog
  void _showAddServiceDialog() {
    final titleController = TextEditingController();
    final subtitleController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Add Campus Service'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(hintText: 'Enter title'),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: subtitleController,
                decoration: const InputDecoration(hintText: 'Enter subtitle'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Check if fields aren't completely empty before adding
                if (titleController.text.isNotEmpty) {
                  setState(() {
                    services.add({
                      'title': titleController.text,
                      'subtitle': subtitleController.text.isEmpty
                          ? 'No description'
                          : subtitleController.text,
                    });
                  });
                }
                Navigator.pop(context); // Close popup box
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
  }

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
                      services[index]['title'] ?? '',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(services[index]['subtitle'] ?? ''),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.redAccent),
                      onPressed: () {
                        setState(() {
                          services.removeAt(index);
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
        onPressed: _showAddServiceDialog, // Trigger custom form dialog popup
        child: const Icon(Icons.add),
      ),
    );
  }
}
