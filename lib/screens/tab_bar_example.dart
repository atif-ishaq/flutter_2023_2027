import 'package:flutter/material.dart';

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    // DefaultTabController automatically coordinates the TabBar and TabBarView
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            'TabBar Example',
            style: TextStyle(color: Colors.white),
          ),
          bottom: const TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            tabs: [
              Tab(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.home), Text('Home')],
                ),
              ),
              Tab(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.settings), Text('Settings')],
                ),
              ),
              Tab(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.person), Text('Profile')],
                ),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Settings Screen', style: TextStyle(fontSize: 24))),
            Center(child: Text('Home Screen', style: TextStyle(fontSize: 24))),
            Center(child: Text('Profile Screen', style: TextStyle(fontSize: 24))),
          ],
        ),
      ),
    );
  }
}
