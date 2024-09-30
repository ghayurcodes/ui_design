

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
         
          height: _height*0.2,
          color: Colors.red,
          child: FittedBox(
            child: Text('heloo',style: TextStyle(
              fontSize: 400
            ),),
          ),
        ),
      ),
    );

  }
}
