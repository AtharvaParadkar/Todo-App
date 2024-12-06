import 'package:flutter/material.dart';

class FilterNotifier extends ChangeNotifier {
  String _filter = 'All';
  String get filter => _filter;

  void updateFilter(String newFilter){
    _filter =newFilter;
    notifyListeners();
  }
}
