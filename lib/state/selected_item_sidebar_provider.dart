import 'package:flutter/material.dart';

class SelectedItemSidebarProvider extends ChangeNotifier {
  String _selectedItem = "Home";

  String get selectedItem => _selectedItem;

  void selectItem(String item) {
    _selectedItem = item;
    notifyListeners();
  }
}
