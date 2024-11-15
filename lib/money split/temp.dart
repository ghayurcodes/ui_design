import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class temo extends StatelessWidget {
  const temo({super.key});

  @override
  Widget build(BuildContext context) {
    var _height=MediaQuery.of(context).size.height;
    var _width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
            backgroundColor: Colors.transparent,
          title: FittedBox(child: Text("Money Split",style: TextStyle(
            fontSize: _width*0.09,
            fontFamily: "Meme",
            fontWeight: FontWeight.w600
          ),),),
        centerTitle: true,
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.grey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(child: Container(
                child:Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Container(
                           width: _width*0.4,
                           height: _width*0.4,
                           decoration: BoxDecoration(
                             color: Colors.redAccent,
                              shape: BoxShape.circle
                           ),
                         ),
                         Container(
                           width: _width*0.4,
                           height: _width*0.4,
                           decoration: BoxDecoration(
                               color: Colors.greenAccent,
                               shape: BoxShape.circle
                           ),
                         ),
                       ],
                    )
                  ],
                )
                ,
              )),
              Container(
                margin: EdgeInsets.only(bottom: 10,right: 10,left: 10),
                width: _width,
                height: _height*0.1,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.receipt_rounded,size: _width*0.09,),
                    Icon(Icons.receipt_rounded,size: _width*0.09,),
                    Icon(Icons.receipt_rounded,size: _width*0.09,),


                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
