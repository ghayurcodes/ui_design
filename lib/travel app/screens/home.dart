import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';
import 'package:ui_design/travel%20app/custom%20widgets/widgets.dart';
import '../providers/travel_app_provider.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


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
    var provider =Provider.of<home_provider>(context,listen: false);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15),
              width: _width,
              height: _height*0.12,
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
              height: _height * 0.08,
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Consumer<home_provider>(builder: (context, value, child) {

                return ListView.builder(
                  itemCount: 7,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    // Determine if this is the selected item
                    bool isSelected = index == value.selectedindex;

                    return GestureDetector(
                      onTap: () {
                          value.set_selected_category(index); // Update selected index

                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: isSelected
                              ? const Color(0xff2f2f2f) // Highlighted color
                              : const Color(0xfffef7ff),
                          boxShadow: isSelected?[
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              spreadRadius: 1,
                              blurRadius: 3,
                            ),
                          ]:null,
                        ),
                        child: Center(
                          child: Text(
                            "Ghayur",
                            style: TextStyle(
                              color: isSelected ? Colors.white : Colors.black.withAlpha(100),
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      )

                    );
                  },
                );
              },),
            ),
            SizedBox(
              height: _height*0.03,
            ),
            Expanded(child:Container(

              child: CarouselSlider(

                options: CarouselOptions(height: double.maxFinite,
                autoPlay: true,
                 autoPlayInterval: Duration(seconds: 3),
                  viewportFraction: 0.8,
                  enableInfiniteScroll: false,
                  enlargeCenterPage: true,
                  initialPage: 1,
                  scrollPhysics: BouncingScrollPhysics()


                ),

                items: [1,2,3,4,5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return destination_card();
                    },
                  );
                }).toList(),
              ),
            )
            ),
            SizedBox(
              height: _height*0.01,
            ),

            Container(

              padding: EdgeInsets.symmetric(horizontal: 20),
              height: _height*0.08,
              child: GNav(
                // rippleColor: Colors.grey.withOpacity(800), // tab button ripple color when pressed
                tabBorderRadius: 25,
                tabActiveBorder: Border.all(color: Colors.black, width: 1),
                tabBorder: Border.all(color: Colors.white, width: 1), // tab button border
                curve: Curves.ease, // tab animation curves// tab animation duration
                gap: 8, // the tab button gap between icon and text// unselected icon color
                activeColor: Colors.black, // selected icon and text color
                iconSize: 25, // tab button icon size
                tabBackgroundColor: Colors.black.withOpacity(0.1),
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 13), // navigation bar padding
                  tabs: [
                    GButton(
                      icon: LineIcons.home,
                      text: 'Home',
                    ),
                    GButton(
                      icon: LineIcons.heart,
                      text: 'Likes',
                    ),
                    GButton(
                      icon: LineIcons.user,
                      text: 'Profile',
                    ),

                  ],

              ),
            )



          ],),
        ),
      ),


    );
  }
}
