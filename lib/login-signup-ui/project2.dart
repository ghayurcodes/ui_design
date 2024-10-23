import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login ({super.key});

  @override
  Widget build(BuildContext context) {
    var _width=MediaQuery.of(context).size.width;
    var _height=MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false ,
    body: Center(
    child: Container(
        width:_width,
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
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Login",style: TextStyle(
                  fontSize: _width*0.1,
                  color: Colors.white
                ),),
                Text('Email',style: TextStyle(
                  color: Colors.white
                ),),
                custom_feild(),

                
              ],
            ))

          ],
        )
),
    ),
    );
  }
}




custom_feild(){
  return TextField(
    cursorColor: Colors.white,
    decoration: InputDecoration(
      border: InputBorder.none,
      contentPadding: EdgeInsets.all(5),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(
            color: Colors.white),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(25),
        borderSide: BorderSide(
            color: Colors.white,),
      ),
    ),
    maxLines: 1,
  );
}
