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
  ""]


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
