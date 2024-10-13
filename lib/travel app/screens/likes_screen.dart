import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';
import 'package:ui_design/travel%20app/providers/travel_app_provider.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:swipeable_tile/swipeable_tile.dart';

class likes_screen extends StatefulWidget {
  const likes_screen({super.key});

  @override
  State<likes_screen> createState() => _likes_screenState();
}

class _likes_screenState extends State<likes_screen> {
  @override
  Widget build(BuildContext context) {

    var mprov=Provider.of<home_provider>(context,listen: false);
    return SafeArea(
      child: mprov.favs.isEmpty? Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height:  MediaQuery.of(context).size.height*0.15,
          padding: EdgeInsets.all(10),
          child: FittedBox(
              fit: BoxFit.contain,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Wishlist is Empty!',style: TextStyle(fontWeight: FontWeight.w200,fontSize: 30,color:  Theme.of(context).colorScheme.primary,)),
                  Text('🙈',style: TextStyle(
                      fontSize: 30
                  ),)
                ],
              )
          ),
        ),
      ):Container(
        padding: EdgeInsets.only(top: 20,right: 10,left: 10),
      color: Colors.white,
        child: Consumer<home_provider>(builder: (context, value, child) {
          return ListView.builder(itemBuilder:  (context, index) {
            return value.favs.contains(index)?SwipeableTile(
              color: Colors.white,
              swipeThreshold: 0.3,
              isElevated: false,
              direction: SwipeDirection.horizontal,
              onSwiped: (direction) {// Here call setState to update state
              },
              backgroundBuilder: (context, direction, progress) {
                if (direction == SwipeDirection.endToStart) {
                 value.favs.remove(index);

                } else if (direction == SwipeDirection.startToEnd) {
                  value.favs.remove(index);

                }
                return Container();
              },
              key: UniqueKey(),
              child: Container(
                width: MediaQuery.of(context).size.width*0.9,
                height: MediaQuery.of(context).size.height*0.1,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.only(top: 4,bottom: 4,left: 3),
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
                  blur: 1,
                  shadowColor: Colors.transparent,
                  color: Colors.black.withOpacity(0.2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: FittedBox(child: Text(value.wondername1.elementAt(index),style: TextStyle(fontWeight: FontWeight.w600,fontSize: 33,color: Colors.white,)))),
                      Row(
                        children: [
                          Icon(LineIcons.mapMarker,color: Colors.white,),
                          Text(value.wondername2.elementAt(index),style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Colors.white,)),
                        ],
                      )

                    ],
                  ),
                ),

              ),
            ):Container(
            );
          },itemCount: value.wondername1.length,);
        },),
      ),
    );
  }
}
