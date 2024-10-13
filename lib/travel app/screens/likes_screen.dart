import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_design/travel%20app/providers/travel_app_provider.dart';

class likes_screen extends StatefulWidget {
  const likes_screen({super.key});

  @override
  State<likes_screen> createState() => _likes_screenState();
}

class _likes_screenState extends State<likes_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(top: 20,right: 30,left: 30),
      color: Colors.white,
        child: Consumer<home_provider>(builder: (context, value, child) {
          return ListView.builder(itemBuilder:  (context, index) {
            return value.favs.contains(index)?Container(
              color: Colors.yellowAccent,
              width: 200,
              height: 100,
            ):Container(
              color: Colors.pinkAccent,
              width: 200,
              height: 40,
            );
          },itemCount: value.wondername1.length,);
        },),
      ),
    );
  }
}
