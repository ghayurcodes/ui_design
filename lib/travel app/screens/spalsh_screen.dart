

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_design/travel%20app/custom%20widgets/widgets.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {

  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    var _width=MediaQuery.of(context).size.width;
    var _height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff005e9b),
                Color(0xff012152),
              ],
              begin: Alignment.topCenter,
               end: Alignment.bottomCenter,

            )
          ),
          child: Center(
            child: Container(
              height: _height*0.16,
              width: _width,
              child: FittedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Travel',style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          fontFamily:"splash"
                        ),),
                        SizedBox(
                          width:7,
                        ),
                        Image(image:AssetImage('assets/images/earth.png'),height: 32,color: Colors.white, )
                      ],
                    ),
                    SizedBox(
                      height:10 ,
                    ),
                    Column(
                      children: [
                        splash_text("Find Your Dreams"),
                        splash_text("Destination with Us"),

                      ],
                    )
                  ],
                ),
              ),

            ),
          ),
        ),
      ),
    );

  }
}
