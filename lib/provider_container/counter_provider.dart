import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier{
   int _count=1;
  int get count =>_count;

  void incrementCounter(){
    _count+=1;
    notifyListeners();
  }

   void decrementCounter(){
     if(_count>0){
       _count-=1;
       notifyListeners();
     }
   }

}