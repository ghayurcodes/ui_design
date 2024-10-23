
import 'package:flutter/material.dart';

class proj2 extends StatelessWidget {
  const proj2 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Center(
    child: Container(
      color: Colors.red,
        width: 200,
        height: 100,
        child: FittedBox(child: Text("hello ",style: TextStyle(
          fontSize: 76
        ),)),
),
    ),
    );
  }
}
