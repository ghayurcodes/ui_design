import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart';

import '../screens/explore.dart';
import '../screens/profile_screen.dart';

class home_provider with ChangeNotifier {
  int _selectedIndex = 0;
  int selected_screen= 0;
  var screens = [
    explore_page(),
    Container(
      color: Colors.red,
      child: Center(
        child: Text('Liks'),
      ),
    ),
    Profile()
  ];
  List<int> favs=[];
  var options=["Most Viewed","Nearby","Latest","Popular","Adventure"];
  var wonder_images=["https://www.weirdosabroad.com/wp-content/uploads/2018/10/christ-the-redeemer-corcovado-brazil-e1538568170179.jpg",
  ""];


  var wondername1=["CHRIST THE REDEEMER","Great Wall"];


  var wondername2=["Brazil","China"];


  var wonderdesc=["In Portuguese, Christ the Redeemer is also known as the Cristo Redentor. It is a massive statue of Jesus Christ that stands atop Mount Corcovado in Rio de Janeiro, Brazil. Corcovado rises over Rio de Janeiro, Brazil’s Brazil’s main port city, immortalised in traditional and popular music. The Christ the Redeemer monument, which rises 98 feet (30 metres) tall with 92 feet of horizontal spread arms, was finished in 1931. (28 metres). The monument has become a symbol for both Rio de Janeiro and the whole country of Brazil.",
  "The Great Wall of China is a chain of fortifications constructed of stone, brick, compressed earth, wooden, and other resources that run east-west across China’s historical northern borders to protect Chinese states and empires against assaults and invasions by various nomadic peoples from the Eurasian Steppe\nBorder restrictions, allowing the application of tariffs on products conveyed along the Silk Route, trade restrictions and stimulation, and high migration controls are among the other uses of the Great Wall in China.",
    ""];


  int get selectedindex => _selectedIndex;

  void set_selected_category(int index) {
    _selectedIndex = index;
    notifyListeners();
  }



  void chose_screen(int index){
    selected_screen=index;
    notifyListeners();
  }


  void add_fav(int index){

    if(favs.contains(index)){
      favs.remove(index);
    }
    else{
      favs.add(index);
    }
    notifyListeners();

  }
}
