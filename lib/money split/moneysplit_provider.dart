import 'package:flutter/cupertino.dart';

class data_provider with ChangeNotifier{


}


class entery{
  late String name;
  late double amount;
  late String time;

  entery(String n,double a,String t){
    this.name=n;
    this.amount=a;
    this.time=t;
  }


}
