
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';

splash_text(String txt){

  return Text(txt,style:TextStyle(
    color: CupertinoColors.white,
    fontSize: 10,
    fontWeight: FontWeight.w500

  ),);

}

destination_card(){
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://burst.shopifycdn.com/photos/hiker-looks-up-at-vertical-mountain-peaks.jpg?width=1000&format=pjpg&exif=0&iptc=0'),
              fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.circular(20)
          ),

        ),
        Positioned(
          top: 10,
          right: 10,
          child: BlurryContainer(
            child: Icon(CupertinoIcons.heart,color: CupertinoColors.white,size: 30,),
            color: CupertinoColors.black.withOpacity(0.4),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 15,
          left: 15,
          child: BlurryContainer(
            color: CupertinoColors.black.withOpacity(0.4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(CupertinoIcons.location_solid,color: CupertinoColors.inactiveGray,),
                      SizedBox(width: 5,),
                      Text("description",style: TextStyle(
                        color: CupertinoColors.inactiveGray
                      ),),


                    ],
                  ),
                  Icon(Icons.star_border_purple500_sharp, color: CupertinoColors.inactiveGray,)
                ],
              )
            ],
          )),
        )
      ],
    ),
  );
}
