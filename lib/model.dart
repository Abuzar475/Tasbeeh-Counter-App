import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int count = 0;
  Color color = Colors.white;

  void increament() {
    count++;
    notifyListeners();
  }

  void refresh() {
    count = 0;
    notifyListeners();
  }

  void light(Color color){
    if(this.color == Colors.white){
        this.color = color;
    }else{
      this.color = Colors.white;
    }
    
    notifyListeners();
  }
}
