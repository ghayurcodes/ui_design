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
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text("Hi, Jenny👋",style: TextStyle(
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
                    radius: 30,
                     backgroundImage: NetworkImage("https://www.shutterstock.com/image-photo/passport-photo-portrait-woman-on-260nw-2438031869.jpg")
                   ),
                 ],
              ),
            ),
            SizedBox(
              height: _height*0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search places',
                  prefixIcon: Icon(Icons.search, color: Colors.black.withAlpha(100)),
                  suffixIcon: Icon(Icons.tune, color: Colors.black.withAlpha(100)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none, // No visible border by default
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: BorderSide(color:Colors.black.withAlpha(100)), // Light grey border
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: BorderSide(color: Colors.black.withAlpha(100)), // Light grey border
                  ),
                ),
                maxLines: 1,
              ),
            ),
            SizedBox(
              height: _height*0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Places",style: TextStyle(
                      fontSize: _width*0.05,
                      fontWeight: FontWeight.w700,
                      color: Colors.black
                  ),),
                  Text("View all",style: TextStyle(
                      fontSize: _width*0.04,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withAlpha(100)
                  ),),

                ],
              ),
            ),
            SizedBox(
              height: _height*0.03,
            ),
            Container(
              width: _width,
              height: _height*0.09,
              color: Colors.pinkAccent,
              padding: EdgeInsets.symmetric(vertical: 17),
              child: ListView.builder(itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  padding: EdgeInsets.symmetric(horizontal: 30,),
                  child: Center(
                    child: Text("Ghayur",style: TextStyle(
                      color: Colors.black.withAlpha(100)
                    ),),
                  ),
                  decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                  ),
                );
              },itemCount: 7,
              scrollDirection: Axis.horizontal,),
            ),
            // Expanded(
            //   child: ListView.builder(itemBuilder: (context, index) {
            //     return Stack(
            //       children: [
            //         Container(
            //
            //         )
            //       ],
            //     );
            //   },),
            // )

          ],),
        ),
      ),


    );
  }
}
