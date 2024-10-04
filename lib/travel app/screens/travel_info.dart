import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/travel%20app/custom%20widgets/widgets.dart';

class destination_info extends StatelessWidget {
  const destination_info({super.key});

  @override
  Widget build(BuildContext context) {
    var _width=MediaQuery.of(context).size.width;
    var _height=MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
      body: Center(
        child: Column(
           children: [
             Expanded(flex: 6,
                 child: Padding(
                   padding: EdgeInsets.only(bottom: 10),
                   child: destination_card(CupertinoIcons.heart, CupertinoIcons.back,  null, null,null,200)),
                 ),
             Expanded(flex: 3,
                 child: Padding(
                   padding: const EdgeInsets.all(10),
                   child: Column(
                     children: [
                      Row(
                         children: [
                           Text("Overview",style: TextStyle(
                       fontSize: _width*0.06,
                       fontWeight: FontWeight.w500,
                       color: Colors.black)),
                           SizedBox(
                             width: _width*0.15,
                           ),
                           Text("Details",style: TextStyle(
                               fontSize: _width*0.048,
                               fontWeight: FontWeight.w700,
                               color:CupertinoColors.inactiveGray),),

                         ],
                      )
                     ],
                   ),
                 )),

             Expanded(flex: 1,child: Padding(
               padding: const EdgeInsets.all(10),
               child: Container(color: Colors.green,),
             ))
           ],
        ),
      )
      ),
    );
  }
}
