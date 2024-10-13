import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';
import 'package:ui_design/travel%20app/providers/travel_app_provider.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:swipeable_tile/swipeable_tile.dart';
import 'package:lottie/lottie.dart';

class likes_screen extends StatefulWidget {
  const likes_screen({super.key});

  @override
  State<likes_screen> createState() => _likes_screenState();
}

class _likes_screenState extends State<likes_screen> {
  @override
  Widget build(BuildContext context) {

    var mprov=Provider.of<home_provider>(context,listen: true);
    return Consumer<home_provider>(
      builder: (context, value, child) {
        return SafeArea(
          child: mprov.favs.isEmpty? Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('No Favourites yet!',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30,color: Colors.black,)),
                Lottie.network(
                    'https://lottie.host/bb7c7abd-752a-4436-9ff6-808cfb753fbe/rPWKIdo8no.json',
                    fit: BoxFit.contain,height: 100),
              ],
            ),
          ):Container(
            padding: EdgeInsets.only(top: 20,right: 10,left: 10),
            color: Colors.white,
            child: ListView.builder(itemBuilder:  (context, index) {
              return value.favs.contains(index)?SwipeableTile(
                color: Colors.white,
                swipeThreshold: 0.3,
                isElevated: false,
                direction: SwipeDirection.horizontal,
                onSwiped: (direction) {
                  if (direction == SwipeDirection.endToStart) {
                    value.add_fav(index);

                  } else if (direction == SwipeDirection.startToEnd) {
                    value.add_fav(index);

                  }

                },
                backgroundBuilder: (context, direction, progress) {
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
            },itemCount: value.wondername1.length,),
          ),
        );
      },
    );
  }
}
