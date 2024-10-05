import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {

    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Container(
          color: Colors.grey,
          child: Center(child:Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.orange,
                  child: Stack(
                    children: [
                      Container(
                        color: Colors.red,
                      ),
                      Positioned(
                        child: Container(
                          color:Colors.pinkAccent,
                          height: _height*0.1,
                        ),
                      )
                    ],
                  ),

                ),
              ),
              Expanded(
                flex:8,
                child: Container(
                  color: Colors.yellowAccent,

                ),
              )
            ],
          )),
        ),
    );

  }
}
