import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          color: Colors.grey,
          child: Center(child:Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  color: Colors.orange,

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
