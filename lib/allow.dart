import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seefood_graduation/getstarted.dart';
import 'package:seefood_graduation/start.dart';
import 'package:seefood_graduation/thirdpage.dart';

class Allow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: -180,
            left: -20,
            width: 490,
            height: 493,
            child: Image.asset(
              "images/Resim1.png",
              width: size.width * 0.7,
            ),
          ),
          Positioned(
            top: 130,
            left: 21,
            width: 370,
            height: 500,
            child: Image.asset(
              "images/rectangle1.png",
              width: size.width * 0.7,
            ),
          ),
          Positioned(
            top: 300,
            left: 70,
            width: 326,
            height: 135,
            child: Text(
              "'SEEFOOD' Would Like "
              "to Access  The "
              "Camera",
              style: GoogleFonts.poppins(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                height: 1.5,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: 420,
            left: 59,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Start()));
              },
              child: Text(
                "Don't Allow",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
              style: TextButton.styleFrom(primary: Colors.black),
            ),
          ),
          Positioned(
            top: 420,
            left: 250,
            child: TextButton(
              child: Text(
                "OK",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
              style: TextButton.styleFrom(primary: Colors.black),
              onPressed: () {
                print("Pressed");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GetStarted()));
              },
            ),
          ),
          Positioned(
            top: 160,
            left: 65,
            width: 290,
            height: 500,
            child: Image.asset(
              "images/line1.png",
              width: size.width * 0.7,
            ),
          ),
          Positioned(
            top: 410,
            left: 166,
            width: 71,
            height: 75,
            child: Image.asset(
              "images/line2.png",
            ),
          ),
          Positioned(
            top: -80,
            left: 70,
            child: Image.asset(
              "images/SEEFOOD.png",
              width: size.width * 0.6,
            ),
          ),
          Positioned(
            top: 570,
            left: 210,
            width: 200,
            height: 200,
            child: Image.asset(
              "images/sebze.png",
              width: size.width * 0.7,
            ),
          ),
        ],
      ),
    );
  }
}
