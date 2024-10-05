import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:ui_design/travel%20app/custom%20widgets/widgets.dart';

class destination_info extends StatelessWidget {
  final int index;
   destination_info({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    var _width=MediaQuery.of(context).size.width;
    var _height=MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
      body: Center(
        child: Column(
           children: [
             Expanded(flex: 6,
                 child: Hero(
                   tag: index,
                   child: Padding(
                     padding: EdgeInsets.only(bottom: 10),
                     child: destination_card(CupertinoIcons.heart, CupertinoIcons.back,  index, (){
                       Navigator.pop(context);
                     },null,200,40.0)),
                 ),
                 ),
             Expanded(flex: 3,
                 child: Padding(
                   padding: const EdgeInsets.all(10),
                   child: Column(
                     children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Text("Overview",style: TextStyle(
                       fontSize: _width*0.06,
                       fontWeight: FontWeight.w500,
                       color: Colors.black)),
                           SizedBox(
                             width: _width*0.13,
                           ),
                           Text("Details",style: TextStyle(
                               fontSize: _width*0.045,
                               fontWeight: FontWeight.w500,
                               color:Colors.black.withOpacity(0.5)),),

                         ],
                      ),
                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 17,horizontal: 10),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Row(

                               children: [
                                 Container(
                                     child: Icon(CupertinoIcons.clock_fill,color: Color(0xff1b1b1b),),

                                 padding: EdgeInsets.all(2),
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(5),
                                   color:Colors.black.withOpacity(0.2)
                                 ),),
                                 SizedBox(
                                   width: _width*0.01,
                                 ),
                                 Text("8 Hours",style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                   color:Colors.black.withOpacity(0.5)
                                 ),)

                               ],
                             ),
                             Row(

                               children: [
                                 Container(
                                   child: Icon(CupertinoIcons.cloud_fill,color: Color(0xff1b1b1b),),

                                   padding: EdgeInsets.all(2),
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(5),
                                       color:Colors.black.withOpacity(0.2)
                                   ),),
                                 SizedBox(
                                   width: _width*0.01,
                                 ),
                                 Text("16 °C",style: TextStyle(
                                     fontWeight: FontWeight.w700,
                                     color:Colors.black.withOpacity(0.5)
                                 ),)

                               ],
                             ),
                             Row(

                               children: [
                                 Container(
                                   child: Icon(CupertinoIcons.star_fill,color: Color(0xff1b1b1b),),

                                   padding: EdgeInsets.all(2),
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(5),
                                       color:Colors.black.withOpacity(0.2)
                                   ),),
                                 SizedBox(
                                   width: _width*0.01,
                                 ),
                                 Text("4.6",style: TextStyle(
                                     fontWeight: FontWeight.w700,
                                     color:Colors.black.withOpacity(0.5)
                                 ),)

                               ],
                             ),

                           ],
                         ),
                       ),
                       Expanded(
                         child: SingleChildScrollView(
                           child: Text(
                               'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ultrices at diam lectus nullam. '
                                   'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ultrices at diam lectus nullam.'
                                   'Lorem ipsum dolor ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ultrices at diam lectus nullam. '
                                   'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ultrices at diam lectus nullam.'
                                   'Lorem ipsum dolor sit amet, consectetur adsit amet, consectetur adipiscing elit.'
                                   ' Suspendisse ultrices at diam lectus nullam.',
                           style: TextStyle(
                             color: Color(0xff7b7b7b).withOpacity(0.8),
                             fontSize: 16,
                             fontWeight: FontWeight.w600
                           ),),

                         ),
                       ),

                     ],
                   ),
                 )),
             Expanded(flex: 1,child: Padding(
               padding: const EdgeInsets.all(10),
               child: Container(
                 margin: EdgeInsets.symmetric(horizontal: 10),
               decoration: BoxDecoration(
                 color: Colors.black,
                 borderRadius:  BorderRadius.circular(20),

               ),
                 child: Center(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Book Now ",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 22
                        ),),
                        Icon(LineIcons.telegramPlane,color: Colors.white,)
                      ],
                   ),
                 ),
               ),
             ))
           ],
        ),
      )
      ),
    );
  }
}
