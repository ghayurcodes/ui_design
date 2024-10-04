
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

splash_text(String txt){

  return Text(txt,style:TextStyle(
    color: CupertinoColors.white,
    fontSize: 10,
    fontWeight: FontWeight.w500

  ),);

}





  destination_card(var right,
      var left,
      var right_icon_on_tap,
      var left_on_tap,
      var ontap,
      var price){
  return GestureDetector(
    onTap: ontap,
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage('https://burst.shopifycdn.com/photos/hiker-looks-up-at-vertical-mountain-peaks.jpg?width=1000&format=pjpg&exif=0&iptc=0'),
                    fit: BoxFit.cover
                ),
                borderRadius: BorderRadius.circular(20),
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
            child: BlurryContainer(
              color: CupertinoColors.black.withOpacity(0.4),
              child: Icon(right,color: CupertinoColors.white,size: 30,),
            ),
          ),
            left!=null?
            Positioned(
            top: 10,
            left : 10,
            child: BlurryContainer(
              child: Icon(left,color: CupertinoColors.white,size: 30,),
              color: CupertinoColors.black.withOpacity(0.4),
            ),
          ):Container(),
          Positioned(
            bottom: 15,
            right: 20,
            left: 20,
            child: BlurryContainer(
                color: CupertinoColors.black.withOpacity(0.4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: price!=null?[
                    Row(children: [
                      Column(
                        children: [
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
                            children: [
                              Icon(LineIcons.mapMarker,color: CupertinoColors.inactiveGray,),
                              SizedBox(width: 5,),
                              Text("description",style: TextStyle(
                                  color: CupertinoColors.inactiveGray
                              ),),


                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                      Text("Price",style: TextStyle(
                        color: CupertinoColors.inactiveGray
                        ),),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(color: CupertinoColors.inactiveGray),
                              children: [
                                TextSpan(text: "\$"), // Escaping the dollar sign
                                TextSpan(text: price.toString()), // Ensure `price` is a String or convert it to one
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
                )),
          )
        ],
      ),
    ),
  );
  }








