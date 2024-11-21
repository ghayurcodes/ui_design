import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

class data_provider with ChangeNotifier{


}


class entry{
  @HiveField(0)
  late String name;
  @HiveField(1)
  late double amount;
  @HiveField(2)
  late String time;

  entry(String n,double a,String t){
    this.name=n;
    this.amount=a;
    this.time=t;
  }


}
