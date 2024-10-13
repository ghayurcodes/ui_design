import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/travel%20app/screens/likes_screen.dart';
import '../screens/explore.dart';
import '../screens/profile_screen.dart';

class home_provider with ChangeNotifier {
  int _selectedIndex = 0;
  int selected_screen= 0;
  var screens = [
    explore_page(),
    likes_screen(),
    Profile()
  ];
  List<int> favs=[];
  var options=["Most Viewed","Nearby","Latest","Popular","Adventure"];
  var wonder_images=["https://www.weirdosabroad.com/wp-content/uploads/2018/10/christ-the-redeemer-corcovado-brazil-e1538568170179.jpg",
  "https://socialstudieshelp.com/wp-content/uploads/2024/03/The-Great-Wall-of-China-Beyond-the-Bricks.webp"
  ,"https://www.thoughtco.com/thmb/mvzDYqXzP4T_D7JfMTsWm5GgDZA=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/sunrise-at-taj-mahal--agra--uttar-pradash--india-583682538-5b91840bc9e77c0050bdc67b.jpg",
  "https://cdn.britannica.com/88/189788-050-9B5DB3A4/Al-Dayr-Petra-Jordan.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Machu_Picchu%2C_Peru.jpg/1200px-Machu_Picchu%2C_Peru.jpg",
    "https://www.traveloffpath.com/wp-content/uploads/2021/04/Chichen-Itza.jpg",
    "https://cdn.mos.cms.futurecdn.net/BiNbcY5fXy9Lra47jqHKGK-1200-80.jpg"

  ];


  var wondername1=["CHRIST THE REDEEMER","Great Wall","Taj Mahal","Petra","Machu Picchu","Chichen Itza","Colosseum"];


  var wondername2=["Brazil","China","India","Jordan","Peru","Mexico","Rome"];


  var wonderdesc=["In Portuguese, Christ the Redeemer is also known as the Cristo Redentor. It is a massive statue of Jesus Christ that stands atop Mount Corcovado in Rio de Janeiro, Brazil. Corcovado rises over Rio de Janeiro, Brazil’s Brazil’s main port city, immortalised in traditional and popular music. The Christ the Redeemer monument, which rises 98 feet (30 metres) tall with 92 feet of horizontal spread arms, was finished in 1931. (28 metres). The monument has become a symbol for both Rio de Janeiro and the whole country of Brazil.",
  "The Great Wall of China is a chain of fortifications constructed of stone, brick, compressed earth, wooden, and other resources that run east-west across China’s historical northern borders to protect Chinese states and empires against assaults and invasions by various nomadic peoples from the Eurasian Steppe\nBorder restrictions, allowing the application of tariffs on products conveyed along the Silk Route, trade restrictions and stimulation, and high migration controls are among the other uses of the Great Wall in China.",
    "Mughal emperor Shah Jahan erected the Taj Mahal to house the remains of his beloved wife, Mumtaz Mahal. In Agra, India, the Taj Mahal was originally constructed over 20 years, mostly on the Yamuna River’s River’s southern bank, and is one of the most famous examples of Mughal architecture, which blended Indian, Persian, and Islamic components.",
        "Petra, also known as Raqmu by the Nabataeans, is an archaeological and historical city in southern Jordan. The city’s sandstone structure and water pipeline system are well-known. Petra is also known as Rose City because of the stone colour from which it is sculpted.\nThe Nabateans are also noted for their skill in building effective water collection systems in arid deserts and their capability to carve structures into solid rock.",
  "Machu Picchu can be built in a “15th century” Inca stronghold perched on a mountain crest 2,430 metres (7,970 feet) above sea level. It is situated above the Scenic Landscape, 80 kilometres (50 miles) northwest of Cuzco and from which the Urubamba River runs in Peru Peru Cusco Region, Urubamba Province Machu Picchu Area. Most Machu Picchu, around 140 buildings, were made of granite, so their ruins blend nicely with the surrounding mountains. Regular granite blocks were fitted so closely collectively (without adhesive) that a knife could not fit between the stones in several spots.",
  "Chichen Itza is a magnificent monument with incredible architectural and historical significance, but it also contains proof that the Mayans were well ahead of their time in Mexico. Researchers have given the building the name Chichen Itza Structure 5B18. While most people are aware that Chichen Itza was created by the Mayans thousands of years ago, there are several features that visitors are unaware of. Chichen Itza’s name refers to an archaeological site rather than the most popular tourist feature, a pyramid.",
  "The Colosseum accomplished it. According to organisers, the great Roman monument was named a “New Wonder” of the World along with six other best places on the planet on the night of July 7, 2007, in Lisbon, following a survey supported by Universal Swiss-Canadian filmmaker Bernard Weber and started attending by 100 million citizens from all landmasses.\nThe term Colosseum is thought to have come from a massive statue of Nero that stood nearby for a long time; the statue of Nero was named after the Colossus of Rhodes."];


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
