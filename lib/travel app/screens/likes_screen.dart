import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';
import 'package:ui_design/travel%20app/providers/travel_app_provider.dart';

class likes_screen extends StatefulWidget {
  const likes_screen({super.key});

  @override
  State<likes_screen> createState() => _likes_screenState();
}

class _likes_screenState extends State<likes_screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.only(top: 20,right: 10,left: 10),
      color: Colors.white,
        child: Consumer<home_provider>(builder: (context, value, child) {
          return ListView.builder(itemBuilder:  (context, index) {
            return value.favs.contains(index)?Container(
              width: MediaQuery.of(context).size.width*0.9,
              height: MediaQuery.of(context).size.height*0.1,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(value.wonder_images.elementAt(index)),
                  fit: BoxFit.cover
                ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 1,
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.2)
                    )
                  ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(value.wondername1.elementAt(index),style: TextStyle(fontWeight: FontWeight.w600,fontSize: 33,color: Colors.white,)),
                        Row(
                          children: [
                            Icon(LineIcons.mapMarker,color: CupertinoColors.inactiveGray,),
                            Text(value.wondername2.elementAt(index),style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.white,)),
                          ],
                        )

                      ],
                    )
                  ],),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      child: Container(child: Icon(Icons.remove,size: 30,),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey.withOpacity(0.5)
                        ),
                        margin: EdgeInsets.all(7),
                      ),
                      onTap: (){

                        //
                        // value.set_visibiility(0.0);
                        //
                        // Timer(
                        //   Duration(milliseconds: 200),
                        //       () {
                        //     value.remove_wish(index);
                        //     value.set_visibiility(1);
                        //   },
                        //
                        // );
                      },
                    ),
                  ),


                ],
              ),

            ):Container(
              color: Colors.pinkAccent,
              width: 200,
              height: 40,
            );
          },itemCount: value.wondername1.length,);
        },),
      ),
    );
  }
}
