import 'package:flutter/material.dart';
import 'package:ui_design/travel%20app/providers/travel_app_provider.dart';
import 'package:ui_design/travel%20app/screens/home.dart';
import 'package:ui_design/travel%20app/screens/spalsh_screen.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
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
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: home_screen(),
      ),
    );
  }
}

