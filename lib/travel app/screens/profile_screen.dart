import 'package:flutter/material.dart';
import 'package:ui_design/travel%20app/custom%20widgets/widgets.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('https://img.freepik.com/free-vector/abstract-watercolor-pastel-background_87374-139.jpg'),
                            fit: BoxFit.fitWidth,
                          )
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          height: _height * 0.09,
                          width: _width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: Offset(0, -5),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: CircleAvatar(
                          radius: 60,
                          backgroundImage: NetworkImage(
                            "https://www.shutterstock.com/image-photo/passport-photo-portrait-woman-on-260nw-2438031869.jpg",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  padding: EdgeInsets.only(right: 30, left: 30),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "First Name",
                          style: TextStyle(
                            color: Colors.black.withAlpha(150),
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: _height * 0.01),
                        textbox("Jenny"),
                        SizedBox(height: _height * 0.02),
                        Text(
                          "Last Name",
                          style: TextStyle(
                            color: Colors.black.withAlpha(150),
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: _height * 0.01),
                        textbox("Parker"),
                        SizedBox(height: _height * 0.02),
                        Text(
                          "Email",
                          style: TextStyle(
                            color: Colors.black.withAlpha(150),
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: _height * 0.01),
                        textbox("jenny123@gmail.com"),
                        SizedBox(height: _height * 0.02),
                        Divider(
                          indent: 30,
                          endIndent: 30,
                          color: Colors.black.withAlpha(50),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Birth",
                              style: TextStyle(
                                color: Colors.black.withAlpha(100),
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                            Icon(Icons.navigate_next_rounded,
                                size: 35, color: Colors.black.withAlpha(150)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Gender",
                              style: TextStyle(
                                color: Colors.black.withAlpha(100),
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                              ),
                            ),
                            Icon(Icons.navigate_next_rounded,
                                size: 35, color: Colors.black.withAlpha(150)),
                          ],
                        ),
                        SizedBox(height: _height * 0.02),
                        Expanded(child:profile_box(
                          "Change Password",
                          Icons.lock,
                          Colors.black.withOpacity(0.9),
                          Colors.white,
                        ), ),

                        SizedBox(height: _height * 0.02),
                        Expanded(child:profile_box(
                          "Logout",
                          Icons.output_rounded,
                          Colors.white,
                          Colors.redAccent,
                        ), ),

                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
