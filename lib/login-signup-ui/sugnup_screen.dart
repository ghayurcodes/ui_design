import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:ui_design/login-signup-ui/login_screen.dart';

class sign_up extends StatelessWidget {
  const sign_up({super.key});

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
            width: _width,
            height: _height,
            child: Column(
              children: [
                Expanded(
                    flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage("assets/images/cowboy_image.png"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(200)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.white.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 10
                            )
                          ]
                      ),
                    )),
                Expanded(
                    flex: 7,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Signup",
                            style: TextStyle(
                                fontSize: _width * 0.1, color: Colors.white),
                          ),
                          SizedBox(
                            height: _width * 0.01,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Email',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          custom_feild(LineIcon.user()),
                          SizedBox(
                            height: _width * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Password',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          custom_feild(LineIcon.lock()),
                          SizedBox(
                            height: _width * 0.02,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Confirm Password',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          custom_feild(null),
                          SizedBox(
                            height: _width * 0.06,
                          ),
                          GestureDetector(
                            child: custom_button("Signup",Colors.orange,Colors.black,null),
                          ),


                          Expanded(child: SizedBox()),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                'Already Have an Account?',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),GestureDetector(
                            onTap: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => login(),));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(1),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  'Signin',
                                  style: TextStyle(color: Colors.orange),
                                ),
                              ),
                            ),
                          ),



                        ],
                      ),
                    ))
              ],
            )),
      ),
    );
  }
}











