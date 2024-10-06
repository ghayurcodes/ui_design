
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';
import 'package:ui_design/travel%20app/providers/travel_app_provider.dart';


splash_text(String txt){

  return Text(txt,style:TextStyle(
    color: CupertinoColors.white,
    fontSize: 10,
    fontWeight: FontWeight.w500

  ),);

}


  destination_card(
      var right,
      var left,
      var right_icon_on_tap,
      var left_on_tap,
      var ontap,
      var price,
      var edgeround,
      var image,
      var nam1,
      var name2,
      var description
      ){
  return GestureDetector(
    onTap: ontap,
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(

                image: DecorationImage(
                    image: NetworkImage(image),
                    fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(edgeround),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 3,
                      spreadRadius: 1,
                      color: Colors.black.withOpacity(0.7),
                      offset: Offset(0, 3)

                  )
                ]
            ),

          ),
          Positioned(
            top: 10,
            right: 10,
            child: Consumer<home_provider>(builder: (context, value, child) {
              return GestureDetector(
                onTap: (){
                  value.add_fav(right_icon_on_tap);
                },
                child: BlurryContainer(
                    color: CupertinoColors.black.withOpacity(0.4),
                    child: value.favs.contains(right_icon_on_tap)?Icon( CupertinoIcons.heart_fill,color: Colors.red,size: 30,):
                    Icon(right,color: CupertinoColors.white,size: 30,)
                ),
              );
            },),
          ),
            left!=null?
            Positioned(
            top: 10,
            left : 10,
            child: GestureDetector(
              child: BlurryContainer(
                child: Icon(left,color: CupertinoColors.white,size: 30,),
                color: CupertinoColors.black.withOpacity(0.4),
              ),
              onTap: left_on_tap,
            ),
          ):Container(),
          Positioned(
            bottom: 15,
            right: 20,
            left: 20,
            child: BlurryContainer(
                color: CupertinoColors.black.withOpacity(0.4),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: price!=null?[
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                                children: <TextSpan>[
                                  TextSpan(text: "$nam1 ",style: TextStyle(
                                      fontSize: 19
                                  )),


                                ],
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Row(
                              children: [
                                SizedBox(width: 5,),
                                Text(name2,
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: CupertinoColors.inactiveGray
                                  ),
                                overflow: TextOverflow.fade,
                                maxLines: 1,),


                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                        Text("Price",style: TextStyle(
                            color: CupertinoColors.inactiveGray,
                          fontSize: 15
                          ),),
                            SizedBox(
                              height: 7,
                            ),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(color: CupertinoColors.inactiveGray),
                                children: [
                                  TextSpan(text: "\$",style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18,
                                  )), // Escaping the dollar sign
                                  TextSpan(text: price.toString(),style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white
                                  )), // Ensure `price` is a String or convert it to one
                                ],
                              ),
                            )
                          ],
                        )
                      ],),
                    ]:[
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                          children: <TextSpan>[
                            TextSpan(text: 'Mount Fuji, ',style: TextStyle(
                                fontSize: 20
                            )),
                            TextSpan(
                              text: 'Tokyo',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: CupertinoColors.inactiveGray
                              ),
                            ),


                          ],
                        ),
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(LineIcons.mapMarker,color: CupertinoColors.inactiveGray,),
                              SizedBox(width: 5,),
                              Text("description",style: TextStyle(
                                  color: CupertinoColors.inactiveGray
                              ),),


                            ],
                          ),
                          Icon(Icons.star_border_purple500_sharp, color: CupertinoColors.inactiveGray,)
                        ],
                      )
                    ]
                  ),
                )),
          )
        ],
      ),
    ),
  );
  }


  textbox(String name){

  return TextField(
    maxLines: 1,
      cursorColor: Colors.black,
     decoration:  InputDecoration(
       border: InputBorder.none,
       contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
       hintText: name,
       hintStyle:  TextStyle(
         color: Colors.black,
         fontWeight: FontWeight.w700
       ),
       focusedBorder:  OutlineInputBorder(
         borderSide: BorderSide(
           width: 2,
           color: Colors.black.withAlpha(100),
         ),
         borderRadius: BorderRadius.circular(25)
       ),
       enabledBorder: OutlineInputBorder(
           borderSide: BorderSide(
             width: 2,
             color: Colors.black.withAlpha(100),
           ),
           borderRadius: BorderRadius.circular(25)
       )



     ),
  );
  }


  profile_box(String txt, icon,color1,color2){

  return Container(
    decoration: BoxDecoration(
       borderRadius:  BorderRadius.circular(25),
      color: color1,
        border: Border.all(
          color: color2,
          width: 1
        )
    ),
    padding: EdgeInsets.all(10),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(txt,style:
            TextStyle(
                color: color2,
                fontWeight: FontWeight.w700,
                fontSize: 25
          
          ),),
          SizedBox(
            width: 10,
          ),
          Icon(icon,color: color2,)
        ],
      ),
    ),
  );
  }








