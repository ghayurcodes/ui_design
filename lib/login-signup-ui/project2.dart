import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login ({super.key});

  @override
  Widget build(BuildContext context) {
    var _width=MediaQuery.of(context).size.width;
    var _height=MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
    body: Center(
    child: Container(
        width:_width,
        height: _height,
        child: Column(
          children: [
            Expanded(
              flex: 3,
                child: Container(
                  color: Colors.red,
            )),
            Expanded(
              flex: 7,
                child: Column(

            ))

          ],
        )
),
    ),
    );
  }
}
