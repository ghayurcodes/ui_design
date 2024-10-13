import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';
import 'package:ui_design/travel%20app/providers/travel_app_provider.dart';
import 'package:blurrycontainer/blurrycontainer.dart';

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
              child: BlurryContainer(
                 padding: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
               blur: 2,
                
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: Text(value.wondername1.elementAt(index),style: TextStyle(fontWeight: FontWeight.w600,fontSize: 33,color: Colors.white,))),
                    Expanded(
                      child: Row(
                        children: [
                          Icon(LineIcons.mapMarker,color: Colors.white,),
                          Text(value.wondername2.elementAt(index),style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.white,)),
                        ],
                      ),
                    )
                
                  ],
                ),
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
