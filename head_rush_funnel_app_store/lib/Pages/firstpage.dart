import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:head_rush_funnel_app_store/Pages/home/homepage.dart';

class Firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: (EdgeInsets.only(top: 100)),
            child: Text(
              "Tap to get started! \n Water and Fruit Juice only!",
              style: GoogleFonts.anton(
                fontSize: 30,
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: Image.asset("assets/images/Inflatable Funnel.PNG"),
              onTap: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Homepage();
              })),
            ),
          ),
        ],
      ),
    );
  }
}
