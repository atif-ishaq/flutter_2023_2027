import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    ),
  );
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // 1. EXPANDED widget is used to takeup space in mainAxis
          const Expanded(
            child: VideoFeedPage(),
          ),
          
          // 2. CONTAINER & ROW: These are used to create bottom Navigation Bar
          Container(
            height: 60,
            color: Colors.black,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.home, color: Colors.white, size: 30),
                Icon(Icons.search, color: Colors.grey, size: 30),
                TikTokCreateButton(), // Custom center button
                Icon(Icons.message, color: Colors.grey, size: 30),
                Icon(Icons.person, color: Colors.grey, size: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class VideoFeedPage extends StatelessWidget {
  const VideoFeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Below code is Background Video Placeholder
        Container(
          color: Colors.amber,
          child: const Center(
            child: Icon(Icons.play_arrow, size: 80, color: Colors.white30),
          ),
        ),
        
        // This part of Code Generates Top Navigation Tabs
        const Positioned(
          top: 20, left: 0, right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Following', style: TextStyle(color: Colors.white70, fontSize: 16)),
              SizedBox(width: 20),
              Text('For You', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
            ],
          ),
        ),

        // This portin of code Generates Right Sidebar Actions 
        const Positioned(
          bottom: 100,right: 15,
          child: Column(
            children: [
              Icon(Icons.favorite, size: 35, color: Colors.red),
              Text('1.2M', style: TextStyle(color: Colors.white, fontSize: 12)),
              SizedBox(height: 15),
              
              Icon(Icons.comment, size: 35, color: Colors.white),
              Text('45.2K', style: TextStyle(color: Colors.white, fontSize: 12)),
              SizedBox(height: 15),
              
              Icon(Icons.bookmark, size: 35, color: Colors.white),
              Text('88K', style: TextStyle(color: Colors.white, fontSize: 12)),
              SizedBox(height: 15),
              
              Icon(Icons.share, size: 35, color: Colors.white),
              Text('Share', style: TextStyle(color: Colors.white, fontSize: 12)),
            ],
          ),
        ),

        // Bottom Left Description Caption
        const Positioned(
          bottom: 20, left: 15, right: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('@flutter_creator', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white)),
              SizedBox(height: 8),
              Text('Building a simple TikTok mockup UI in Flutter!', style: TextStyle(color: Colors.white, fontSize: 14)),
            ],
          ),
        ),
      ],
    );
  }
}

class TikTokCreateButton extends StatelessWidget {
  const TikTokCreateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 45, height: 30,
      child: Stack(
        children: [
           Positioned(left: 0, child: Container(width: 38, height: 30, decoration: BoxDecoration(color: Colors.cyan, borderRadius: BorderRadius.circular(8)))),
           Positioned(right: 0, child: Container(width: 38, height: 30, decoration: BoxDecoration(color: const Color(0xFFE9435A), borderRadius: BorderRadius.circular(8)))),
          Center(
            child: Container(
              width: 38, height: 30, 
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)), 
              child: const Icon(Icons.add, color: Colors.black, size: 20),
            ),
          ),
        ],
      ),
    );
  }
}
