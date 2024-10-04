import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/travel%20app/custom%20widgets/widgets.dart';

class destination_info extends StatelessWidget {
  const destination_info({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: Center(
        child: Column(
           children: [
             Expanded(flex: 6,
                 child: Padding(
                   padding: EdgeInsets.only(bottom: 10),
                   child: destination_card(CupertinoIcons.heart, CupertinoIcons.back,  null, null,null,null)),
                 ),
             Expanded(flex: 3,child: Container(color: Colors.red,)),
             Expanded(flex: 1,child: Container(color: Colors.green,))
           ],
        ),
      )
      ),
    );
  }
}
