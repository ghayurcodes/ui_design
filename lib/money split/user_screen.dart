
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class user_screen extends StatelessWidget {
  const user_screen({super.key});

  @override
  Widget build(BuildContext context) {

    var _height=MediaQuery.of(context).size.height;
    var _width=MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.more_vert_rounded),
        )],
      ),
      body: Container(
        width: _width,
        height: _height,
          color: Colors.grey,
        child: Column(
          children: [
            Expanded(child: Container(
              child: Row(
                children: [
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.redAccent,
                      radius: 60,
                    ),
                  )
                ],
              ),
            ),flex: 3,),
            Expanded(child: Container(),flex: 10,),
          ],
        ),
      ),
    );
  }
}
