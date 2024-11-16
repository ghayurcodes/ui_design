import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class temo extends StatelessWidget {
  const temo({super.key});





  @override
  Widget build(BuildContext context) {
    var _height=MediaQuery.of(context).size.height;
    var _width=MediaQuery.of(context).size.width;



     popup_add(){
      return showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text('Edit Data'),
            content: CupertinoTextField(
              placeholder: 'Enter new value',
              maxLines: null,
              autofocus: true,
            ),
            actions: [
              CupertinoDialogAction(
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),

            ],
          );
        },
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        forceMaterialTransparency: true,
            backgroundColor: Colors.white,
          title: FittedBox(child: Text("Money Split",style: TextStyle(
            fontSize: _width*0.09,
            fontFamily: "Meme",
            fontWeight: FontWeight.w600
          ),),),
        centerTitle: true,
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.black.withOpacity(0.1),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Container(
                           width: _width*0.4,
                           height: _width*0.4,
                           decoration: BoxDecoration(
                             color: Colors.redAccent,
                              shape: BoxShape.circle
                           ),
                           child: Center(
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Text("YOU OWE",style: TextStyle(
                                     color: Colors.white,fontSize: _width*0.05
                                   ),),
                                   FittedBox(
                                     child: Text('\$80',style: TextStyle(
                                         color: Colors.white,fontSize: _width*0.1
                                     ),),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                         ),
                         Container(
                           width: _width*0.4,
                           height: _width*0.4,
                           decoration: BoxDecoration(
                               color: Colors.green,
                               shape: BoxShape.circle
                           ),
                           child: Center(
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Column(
                                 mainAxisAlignment: MainAxisAlignment.center,
                                 children: [
                                   Text("OWE YOU",style: TextStyle(
                                       color: Colors.white,fontSize: _width*0.05
                                   ),),
                                   FittedBox(
                                     child: Text('\$240',style: TextStyle(
                                         color: Colors.white,fontSize: _width*0.1
                                     ),),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                         ),
                       ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text('People you owe',style: TextStyle(
                      fontSize: _width*0.06,
                      fontWeight: FontWeight.w500

                    ),),
                  ),
                  Divider(
                    endIndent: 10,
                    indent: 10,
                    color: Colors.black,
                    thickness: 1,

                  ),
                  Expanded(
                    flex: 3,
                      child:ListView.builder(itemBuilder:  (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.redAccent,
                        ),
                        title: Text("Alex Trump",style: TextStyle(
                          fontSize: _width*0.05,

                        ),),
                        trailing: FittedBox(
                          child: Text("\$30",style: TextStyle(
                            fontSize: _width*0.09,
                              fontFamily: "splash",
                            color: Colors.redAccent

                          ),),
                        ),
                      ),

                    );
                  },itemCount: 5,) ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text('People who owe you',style: TextStyle(
                        fontSize: _width*0.06,
                        fontWeight: FontWeight.w500

                    ),),
                  ),
                  Divider(
                    endIndent: 10,
                    indent: 10,
                    color: Colors.black,
                    thickness: 1,

                  ),
                  Expanded(
                      flex: 1,
                      child:ListView.builder(itemBuilder:  (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.red,
                        ),
                        title: Text("Chris porter",style: TextStyle(
                          fontSize: _width*0.05,

                        ),),
                        trailing: FittedBox(
                          child: Text("\$30",style: TextStyle(
                            fontSize: _width*0.09,
                            fontFamily: "splash",
                            color: Colors.green

                          ),),
                        ),
                      ),

                    );
                  },itemCount: 1,) ),
                ],
              )),
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
                    InkWell(child: Icon(Icons.add_circle_rounded,size: _width*0.2,color: Colors.green,),
                    onTap: (){popup_add();},),

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
