import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

part 'moneysplit_provider.g.dart'; // This generates the required adapter code.

/// The data provider class for managing data with Hive.
class DataProvider with ChangeNotifier {
  late Box<Entry> _entryBox;

  /// Initialize the Hive box for `Entry`.
  Future<void> init() async {
    _entryBox = await Hive.openBox<Entry>('EntryBox');
  }

  /// Add an entry to the box.
  void addEntry(Entry entry) {
    _entryBox.add(entry);
    notifyListeners();
  }

  /// Retrieve all entries.
  List<Entry> getEntries() {
    return _entryBox.values.toList();
  }
}

/// Model class for `Entry` with Hive integration.
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
