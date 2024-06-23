import 'package:flutter/material.dart';

class StarRatingViewmodel extends ChangeNotifier {
  double value = 0;

  void updateRating(double ratingValue) {
    value = ratingValue;
    notifyListeners();
  }
}
