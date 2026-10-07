import 'package:flutter/material.dart';
import '../screens/campus_connect_home_page.dart';
import '../screens/detail_page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomePage());
        
      case '/details':
        final args = settings.arguments;
        
        // Ensure the arguments are passed safely as a Map before creating the screen
        if (args is Map<String, String>) {
          return MaterialPageRoute(
            builder: (_) => DetailPage(
              title: args['title'] ?? 'Service',
              subtitle: args['subtitle'] ?? '',
            ),
          );
        }
        return _errorRoute("Invalid service arguments");
        
      default:
        return _errorRoute("Route ${settings.name} not found");
    }
  }

  static Route<dynamic> _errorRoute(String message) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text("Error")),
        body: Center(child: Text(message, style: const TextStyle(fontSize: 18))),
      ),
    );
  }
}
