import 'dart:math';
import 'package:hive/hive.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ui_design/login-signup-ui/sugnup_screen.dart';
import 'package:ui_design/money%20split/add_entry_screen.dart';
import 'package:ui_design/money%20split/home_screen.dart';
import 'package:ui_design/money%20split/moneysplit_provider.dart';
import 'package:ui_design/money%20split/user_screen.dart';
import 'package:ui_design/travel%20app/providers/travel_app_provider.dart';
import 'package:ui_design/travel%20app/screens/home.dart';
import 'package:ui_design/travel%20app/screens/spalsh_screen.dart';
import 'package:provider/provider.dart';

import 'money split/Hive data/entry.dart';

void main() async {
  await Hive.initFlutter();

  // Register the adapter for Entry class
   Hive.registerAdapter(EntryAdapter());

  // Open the box only once, and keep it open throughout the app
  var entryBox = await Hive.openBox<List<Entry>>('MoneySplit');

  // Now run the app
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (context) => home_provider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: add_screen(),
      ),
    );
  }
}
