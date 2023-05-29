import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seefood_graduation/login.dart';
import 'package:seefood_graduation/thirdpage.dart';

class Fourth extends StatelessWidget {
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
              top: 230,
              left: 60,
              child: Text(
                "What Is Your Goal?",
                style: GoogleFonts.poppins(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    color: Color(0xffffffff)),
              )),
          Positioned(
            top: 300,
            left: 40,
            width: 331,
            height: 57,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Third()));
              },
              child: Text(
                "Healthy Lifestyle",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                  color: Color(0xd8f77575),
                ),
              ),
            ),
          ),
          Positioned(
            top: 370,
            left: 40,
            width: 331,
            height: 57,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Third()));
              },
              child: Text(
                "Fight Diabetes",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                  color: Color(0xd8f77575),
                ),
              ),
            ),
          ),
          Positioned(
            top: 440,
            left: 40,
            width: 331,
            height: 57,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Third()));
              },
              child: Text(
                "Fight Obesity",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                  color: Color(0xd8f77575),
                ),
              ),
            ),
          ),
          Positioned(
            top: 600,
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
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
              child: Text(
                "Next",
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
