import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';
import 'package:ui_design/travel%20app/custom%20widgets/widgets.dart';
import 'package:ui_design/travel%20app/screens/explore.dart';
import 'package:ui_design/travel%20app/screens/profile_screen.dart';
import 'package:ui_design/travel%20app/screens/spalsh_screen.dart';
import 'package:ui_design/travel%20app/screens/travel_info.dart';
import '../providers/travel_app_provider.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    var provider = Provider.of<home_provider>(context, listen: false);


    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: _height*0.08,
        child: GNav(
          tabBorderRadius: 25,
          tabActiveBorder: Border.all(color: Colors.black, width: 1),
          tabBorder: Border.all(color: Colors.white, width: 1),
          curve: Curves.ease,
          gap: 8,
          duration: Duration(milliseconds: 100),
          activeColor: Colors.black,
          iconSize: 25,
          tabBackgroundColor: Colors.black.withOpacity(0.1),
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 13),
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
          onTabChange: (val) {
            provider.chose_screen(val);

          },
        ),
      ),
      body: Consumer<home_provider>(builder: (context, value, child) => value.screens[value.selected_screen],),
    );
  }
}
