import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class home_provider with ChangeNotifier{
  int _selectedIndex = 1;
  int get selectedindex=>_selectedIndex;

  void set_selected_category(int index){
    _selectedIndex=index;
    notifyListeners();
  }



}
