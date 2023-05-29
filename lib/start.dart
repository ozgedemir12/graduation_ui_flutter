import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seefood_graduation/thirdpage.dart';

class Start extends StatelessWidget {
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
            top: 0,
            left: 55,
            child: Image.asset(
              "images/SEEFOOD.png",
              width: size.width * 0.7,
            ),
          ),
          Positioned(
              top: 350,
              left: 50,
              child: Text(
                "#For Healthy",
                style: GoogleFonts.poppins(
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    color: Color(0xffffffff)),
              )),
          Positioned(
            top: 550,
            left: 120,
            width: 156,
            height: 46,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Third()));
              },
              child: Text(
                "Start",
                style: GoogleFonts.poppins(
                  fontSize: 24,
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
