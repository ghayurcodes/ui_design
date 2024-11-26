
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class user_screen extends StatelessWidget {
  const user_screen({super.key});

  @override
  Widget build(BuildContext context) {

    var _height=MediaQuery.of(context).size.height;
    var _width=MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.more_vert_rounded),
        )],
      ),
      body: Container(
        width: _width,
        height: _height,
          color: Colors.grey,
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Expanded(child: Container(
                      color: Colors.pink,
                      // margin: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                
                            padding: EdgeInsets.all(3),
                            child: CircleAvatar(
                              backgroundColor: Colors.redAccent,
                              radius: 60,
                            ),
                          ),
                          Column(
                            children: [
                              Text("Nmae Hereee",style: TextStyle(fontSize: _width*0.1),
                              ),
                              Text("you owe",style: TextStyle(fontSize: _width*0.05,color: Colors.red),)
                            ],
                          )
                        ],
                      ),
                    ),flex: 3,),
                    Expanded(child: Container(
                      color: Colors.yellow,
                    ),flex: 7,),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10,right: 10,left: 10),
                width: _width,
                height: _height*0.1,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.history,size: _width*0.1,),
                    InkWell(child: FittedBox(child: Icon(Icons.add_circle_rounded,size: _width*0.2,color: Colors.green,)),
                      onTap: (){},),

                    Icon(Icons.person,size: _width*0.1,),


                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
