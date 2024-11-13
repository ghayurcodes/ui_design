import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ui_design/login-signup-ui/sugnup_screen.dart';
import 'package:ui_design/login-signup-ui/temp.dart';
import 'package:ui_design/travel%20app/providers/travel_app_provider.dart';
import 'package:ui_design/travel%20app/screens/home.dart';
import 'package:ui_design/travel%20app/screens/spalsh_screen.dart';
import 'package:provider/provider.dart';

import 'login-signup-ui/login_screen.dart';
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
        debugShowCheckedModeBanner: false,
        home: temo()
      ),
    );
  }
}

