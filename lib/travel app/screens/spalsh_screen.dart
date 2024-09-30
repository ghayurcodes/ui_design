

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class splash_screen extends StatelessWidget {
  const splash_screen({super.key});


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
          child: Container(
            height: _height*0.15,
            width: _width,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Travel',style: GoogleFonts.pacifico(
                      color: Colors.white,
                      fontSize: 30
                    ),),
                    Icon(CupertinoIcons.heart)
                  ],
                ),
                Column(
                  children: [
                    Text("fwenjfhewlfjwilf"),
                    Text("fwenjfhewlfjwilf"),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );

  }
}
