import 'dart:async';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:provider/provider.dart';
import 'package:ui_design/travel%20app/providers/travel_app_provider.dart';

import '../custom widgets/widgets.dart';
import 'home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _preloadImages().then((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  // Preload images using precacheImage
  Future<void> _preloadImages() async {
    var prov=Provider.of<home_provider>(context,listen: false);
    for (String url in prov.wonder_images) {
      await precacheImage(NetworkImage(url), context);
    }
  }

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        width: _width,
        height: _height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff005e9b),
              Color(0xff012152),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Container(
                height: _height * 0.16,
                width: _width,
                child: FittedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Travel',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: "splash",
                            ),
                          ),
                          SizedBox(width: 7),
                          Image(
                            image: AssetImage('assets/images/earth.png'),
                            height: 32,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          splash_text("Find Your Dreams"),
                          splash_text("Destination with Us"),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Align(
               alignment: Alignment.bottomCenter,
              child: Container(
                width: 70,
                height: 70,
                child: LoadingIndicator(
                  indicatorType: Indicator.ballPulse,
                  colors: [Colors.white],

                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
