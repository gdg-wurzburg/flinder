import 'package:flutter/material.dart';

class LocationProvider extends ChangeNotifier{
  double latitude = 10;
  double longitude = 120;
  String test = 'test';
  void setLocation(double latitude, double long) {
    this.latitude = latitude;
    this.longitude = long;
    this.test = 'getestet';
    notifyListeners();
  }
}