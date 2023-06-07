import 'package:flutter/foundation.dart';

class FavoriteProvider with ChangeNotifier {
  List<int> _selectedItems = [];

  List<int> get selectedItems => _selectedItems;

  void AddItems(int val) {
    _selectedItems.add(val);
    notifyListeners();
  }

  void RemoveItems(int val) {
    _selectedItems.remove(val);
    notifyListeners();
  }
}
