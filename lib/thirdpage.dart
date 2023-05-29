import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seefood_graduation/fourthpage.dart';
import 'package:seefood_graduation/start.dart';

class Third extends StatelessWidget {
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
          //Logo
          Positioned(
            top: 0,
            left: 55,
            child: Image.asset(
              "images/SEEFOOD.png",
              width: size.width * 0.7,
            ),
          ),
          //Welcome
          Positioned(
            top: 220,
            left: 70,
            width: 326,
            height: 135,
            child: Text(
              "Welcome to a",
              style: GoogleFonts.poppins(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                height: 1.5,
                color: Color(0xffffffff),
              ),
            ),
          ),
          Positioned(
            top: 260,
            left: 70,
            width: 326,
            height: 135,
            child: Text(
              "Healtier Life",
              style: GoogleFonts.poppins(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                height: 1.5,
                color: Color(0xffffffff),
              ),
            ),
          ),
          //First item
          Positioned(
            top: 340,
            left: 70,
            width: 326,
            height: 135,
            child: Text(
              "Your privacy is very important to us. We guarantee that your data will"
              " be encrypted and securely stored.",
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                height: 1.5,
                color: Color(0xffffffff),
              ),
            ),
          ),
          Positioned(
            top: 350,
            left: 30,
            width: 35,
            height: 36,
            child: Image.asset(
              "images/icon2.png",
              width: size.width * 0.7,
            ),
          ),
          Positioned(
            top: 350,
            left: 30,
            width: 35,
            height: 36,
            child: Image.asset(
              "images/icon1.png",
              width: size.width * 0.7,
            ),
          ),

          Positioned(
            top: 440,
            left: 70,
            width: 326,
            height: 135,
            child: Text(
              "Our approach is backed by scientific evidence and helps develop eating habits in a healthy and sustainable way",
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                height: 1.5,
                color: Color(0xffffffff),
              ),
            ),
          ),
          Positioned(
            top: 450,
            left: 30,
            width: 35,
            height: 36,
            child: Image.asset(
              "images/icon2.png",
              width: size.width * 0.7,
            ),
          ),
          Positioned(
            top: 450,
            left: 30,
            width: 35,
            height: 36,
            child: Image.asset(
              "images/icon3.png",
              width: size.width * 0.7,
            ),
          ),
          Positioned(
            top: 600,
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
                    context, MaterialPageRoute(builder: (context) => Fourth()));
              },
              child: Text(
                "I Understand",
                style: GoogleFonts.poppins(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                  color: Color(0xd8f77575),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
