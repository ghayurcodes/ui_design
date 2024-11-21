


import 'package:hive/hive.dart';

@HiveType(typeId: 0) // Assign a unique typeId
class Entry {
  @HiveField(0)
  late String name;

  @HiveField(1)
  late double amount;

  @HiveField(2)
  late String time;

  Entry(this.name, this.amount, this.time); // Constructor
}