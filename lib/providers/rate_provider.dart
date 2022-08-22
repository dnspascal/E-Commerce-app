import 'package:flutter/material.dart';
import 'package:eight_project/models/rate.dart';

class RateProvider with ChangeNotifier {
  List<Rate> stars = [
    Rate(isRated1: true, rateOfTheProduct: 3),
    Rate(isRated2: true, rateOfTheProduct: 4),
    Rate(isRated3: true, rateOfTheProduct: 2),
    Rate(isRated4: true, rateOfTheProduct: 3),
    Rate(isRated5: true, rateOfTheProduct: 4),
  ];
  void rate1() {
    stars[0].isRated1 = !stars[0].isRated1;
    notifyListeners();
  }

  void rate2() {
    if (stars[0].isRated1 = false) {
      stars[1].isRated2 = !stars[1].isRated2;
    }
    notifyListeners();
  }

  void rate3() {
    if (stars[1].isRated2 = false) {
      stars[2].isRated3 = !stars[2].isRated3;
    }
    notifyListeners();
  }

  void rate4() {
    if (stars[2].isRated3 = false) {
      stars[3].isRated4 = !stars[3].isRated4;
    }
    notifyListeners();
  }

  void rate5() {
    if (stars[3].isRated4 = false) {
      stars[4].isRated4 = !stars[4].isRated4;
    }
    notifyListeners();
  }

  // if(stars[index].isRated1=true){
  //   stars[index].isRated1 = !stars[index].isRated1;
  // }
  //notifyListeners();
}
