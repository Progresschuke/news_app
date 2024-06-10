import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  int _currentPageIndex = 0;
  int _currentCategoryPageIndex = 0;

  int get currentPageIndex => _currentPageIndex;
  int get currentCategoryPageIndex => _currentCategoryPageIndex;

  void setHomePageIndex(int index) {
    _currentPageIndex = index;
    notifyListeners();
  }

  void setCategoryPageIndex(int index) {
    _currentCategoryPageIndex = index;
    notifyListeners();
  }

  void resetCategoryPageIndex() {
    _currentCategoryPageIndex = 0;
    notifyListeners();
  }
}
