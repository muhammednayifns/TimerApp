
import 'dart:async';

import 'package:flutter/cupertino.dart';

class TimerService extends ChangeNotifier{
  late Timer timer;
  double currentDuration=300;
  double selectedTime=300;
  bool timePlaying=false;

  void Start(){
    timePlaying=true;
    timer=Timer.periodic(Duration(seconds: 1), (timer) {
      if(currentDuration==0){
        timer.cancel();
        currentDuration=300;

      }
      else{
        currentDuration--;
        notifyListeners();
      }
    });
  }
  void Pause(){
    timer.cancel();
    timePlaying=false;
    notifyListeners();
  }
  void SelectTime(double seconds){
    selectedTime=seconds;
    currentDuration=seconds;
    notifyListeners();

  }
  void rest(){
    timer.cancel();
    timePlaying=false;
    currentDuration=selectedTime=300;
    notifyListeners();
  }

}