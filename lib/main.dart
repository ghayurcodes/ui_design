import 'dart:math';
import 'package:hive/hive.dart';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:ui_design/login-signup-ui/sugnup_screen.dart';
import 'package:ui_design/money%20split/home.dart';
import 'package:ui_design/travel%20app/providers/travel_app_provider.dart';
import 'package:ui_design/travel%20app/screens/home.dart';
import 'package:ui_design/travel%20app/screens/spalsh_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Ensures all plugins are initialized
  await Hive.initFlutter();
  await Hive.openBox('MoneySplit');
  runApp(const MyApp()); // Start the app
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
        home: homepage(),
      ),
    );
  }
}

