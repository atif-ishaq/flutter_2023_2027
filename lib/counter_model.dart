import 'package:flutter/foundation.dart';

class CounterModel extends ChangeNotifier {
  int _count = 0;

  // Read-only getter to safely expose the private state
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners(); // Notifies looking widgets to refresh their UI
  }

  void decrement() {
    _count--;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }
}
