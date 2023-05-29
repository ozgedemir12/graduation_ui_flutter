import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seefood_graduation/start.dart';

class GetStarted extends StatelessWidget {
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
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment(0, -1),
        end: Alignment(-0.508, 1.041),
        colors: <Color>[Color(0xffff0000), Color(0xd8f77575)],
        stops: <double>[0, 1],
      )),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 70,
            left: 40,
            child: Image.asset(
              "images/Resim2.png",
              width: size.width * 0.8,
            ),
          ),
          Positioned(
            top: 150,
            left: 55,
            child: Image.asset(
              "images/Resim3.png",
              width: size.width * 0.7,
            ),
          ),
          Positioned(
            top: 310,
            left: 55,
            child: Image.asset(
              "images/SEEFOOD.png",
              width: size.width * 0.7,
            ),
          ),
          Positioned(
            top: 550,
            left: 100,
            width: 221,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Start()));
              },
              child: Text(
                "Get Started",
                style: GoogleFonts.poppins(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                  color: Color(0xd8f77575),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
