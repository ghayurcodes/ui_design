import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class temo extends StatelessWidget {
  const temo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.blue,
        child: Center(
          child: Text("helo man",style: GoogleFonts.acme(
            fontSize: 40,
          ),),
        ),
      ),
    );
  }
}
