import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';

class login extends StatelessWidget {
  const login({super.key});

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
                           image: AssetImage("assets/images/woman2.webp"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(200)),
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
                            "Login",
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
                          custom_feild(),
                          SizedBox(
                            height: _width * 0.04,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Password',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          custom_feild(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                'Forgot Password',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),
                          custom_button("Sign in",Colors.orange,Colors.black,null),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'or',
                                style: TextStyle(color: Colors.white,fontSize: _width*0.06),

                              ),
                            ),
                          ),
                          custom_button("Login with Google",Color(0xff0f1012),Colors.white,"assets/images/google logo.png"),
                          Expanded(child: SizedBox()),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                'Don\' Have an Account?',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                          ),Padding(
                            padding: const EdgeInsets.all(1),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                'Signup',
                                style: TextStyle(color: Colors.orange),
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













custom_feild() {
  return TextField(
    style: TextStyle(
      color: Colors.white
    ),
    cursorColor: Colors.white,
    decoration: InputDecoration(
      border: InputBorder.none,
      contentPadding: EdgeInsets.all(5),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(
          color: Colors.grey,
        ),
      ),
    ),
    maxLines: 1,
  );
}


custom_button(String txt,var bgcolor,var txtcolor,var iconn){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 5),
    width: double.maxFinite,
    child: Center(child: iconn==null?Text(txt,style: TextStyle(
      color: txtcolor,
      fontSize: 25
    ),):Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(child: Image.asset(iconn),
        width: 30,
            height: 40,),
        SizedBox(
          width: 5,
        ),
        Text(txt,style: TextStyle(
            color: txtcolor,
            fontSize: 25
        ),)
      ],
    )),
    decoration: BoxDecoration(
      color: bgcolor,
      borderRadius: BorderRadius.circular(25),
      boxShadow: [
        BoxShadow(
          color: txtcolor.withOpacity(0.3),
          spreadRadius: 1,
          blurRadius: 5
        )
      ]

    ),
  );
}

