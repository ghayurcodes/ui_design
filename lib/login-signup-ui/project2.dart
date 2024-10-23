import 'package:flutter/material.dart';

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
                      color: Colors.red,
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
                          custom_button("Sign in",Colors.orange),
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
                          custom_button("Sign in",Colors.orange),


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


custom_button(String txt,var color){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 5),
    width: double.maxFinite,
    
    child: Center(child: Text(txt,style: TextStyle(
      color: Colors.black,
      fontSize: 25
    ),)),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(25)
    ),
  );
}

