import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_design/travel%20app/screens/travel_info.dart';
import '../custom widgets/widgets.dart';
import '../providers/travel_app_provider.dart';

class explore_page extends StatelessWidget {
  const explore_page({super.key});

  @override
  Widget build(BuildContext context) {

    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15),
              width: _width,
              height: _height * 0.12,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Hi, Jenny👋",
                        style: TextStyle(
                          fontSize: _width * 0.07,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Explore The World",
                        style: TextStyle(
                          fontSize: _width * 0.045,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withAlpha(100),
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 30,
                    // backgroundImage: NetworkImage(
                    //     "https://www.shutterstock.com/image-photo/passport-photo-portrait-woman-on-260nw-2438031869.jpg"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: _height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search places',
                  prefixIcon: Icon(Icons.search,
                      color: Colors.black.withAlpha(100)),
                  suffixIcon: Icon(Icons.tune,
                      color: Colors.black.withAlpha(100)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none, // No visible border by default
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: BorderSide(
                        color: Colors.black.withAlpha(100)), // Light grey border
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: BorderSide(
                        color: Colors.black.withAlpha(100)), // Light grey border
                  ),
                ),
                maxLines: 1,
              ),
            ),
            SizedBox(
              height: _height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Places",
                    style: TextStyle(
                        fontSize: _width * 0.05,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                        fontSize: _width * 0.04,
                        fontWeight: FontWeight.w500,
                        color: Colors.black.withAlpha(100)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: _height * 0.03,
            ),
            Container(
              width: _width,
              height: _height * 0.08,
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Consumer<home_provider>(
                builder: (context, value, child) {
                  return ListView.builder(
                    itemCount: 7,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      bool isSelected = index == value.selectedindex;

                      return GestureDetector(
                        onTap: () {
                          value.set_selected_category(index);
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: isSelected
                                ? const Color(0xff2f2f2f)
                                : const Color(0xfffef7ff),
                            boxShadow: isSelected
                                ? [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.4),
                                spreadRadius: 1,
                                blurRadius: 3,
                              ),
                            ]
                                : null,
                          ),
                          child: Center(
                            child: Text(
                              "Ghayur",
                              style: TextStyle(
                                color: isSelected
                                    ? Colors.white
                                    : Colors.black.withAlpha(100),
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            SizedBox(
              height: _height * 0.03,
            ),
            Expanded(
              child: Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: double.maxFinite,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    viewportFraction: 0.8,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true,
                    initialPage: 1,
                    scrollPhysics: BouncingScrollPhysics(),
                  ),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Hero(
                          tag: i,
                          child: destination_card(
                              CupertinoIcons.heart,
                              null,
                              null,
                              null, () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        destination_info(index: i)));
                          }, null, 20.0),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
