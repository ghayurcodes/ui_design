import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/travel_app_provider.dart';


class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    var _width=MediaQuery.of(context).size.width;
    var _height=MediaQuery.of(context).size.height;

    var provider =Provider.of<home_provider>(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15),
              width: _width,
              height: _height*0.12,
              color: Colors.red,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("Hi, David👋",style: TextStyle(
                         fontSize: _width*0.07,
                         fontWeight: FontWeight.w500,
                         color: Colors.black
                       ),),
                       Text("Explore The World",style: TextStyle(
                           fontSize: _width*0.045,
                           fontWeight: FontWeight.w500,
                           color: Colors.black.withAlpha(100)
                       ),),

                     ],
                   ),
                   CircleAvatar(
                     backgroundColor: Colors.white,
                     child: Image.asset('assets/images/earth.png'),
                   )
                 ],
              ),
            )
          ],),
        ),
      ),


    );
  }
}
