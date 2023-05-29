import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seefood_graduation/allow.dart';
import 'package:seefood_graduation/getstarted.dart';
import 'package:seefood_graduation/login.dart';
import 'package:seefood_graduation/main.dart';
import 'package:seefood_graduation/thirdpage.dart';

class Signup extends StatelessWidget {
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Center(
            child: SingleChildScrollView(
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Positioned(
                    top: -110,
                    left: -20,
                    width: 490,
                    height: 300,
                    child: Image.asset(
                      "images/Resim1.png",
                      width: size.width * 0.7,
                    ),
                  ),
                  Positioned(
                    top: 110,
                    left: -35,
                    width: 490,
                    height: 500,
                    child: Image.asset(
                      "images/Rectangle.png",
                      width: size.width * 0.7,
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
                  Positioned(
                    top: 158,
                    left: 144,
                    width: 203,
                    height: 35,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {},
                      child: Text(
                        "       Sign Up",
                        style: GoogleFonts.poppins(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          height: 1.5,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 560,
                    left: 80,
                    width: 326,
                    height: 135,
                    child: Text(
                      "Do you have an account?",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 555,
                    left: 205,
                    width: 203,
                    height: 35,
                    child: TextButton(
                      child: Text(
                        "Login",
                      ),
                      style: TextButton.styleFrom(primary: Colors.red),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                    ),
                  ),
                  Positioned(
                    top: 158,
                    left: 60,
                    width: 145,
                    height: 35,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        "Login",
                        style: GoogleFonts.poppins(
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                          height: 1.5,
                          color: Color(0xffff0000),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 470,
                    left: 130,
                    width: 156,
                    height: 46,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SplashScreen()));
                      },
                      child: Text(
                        "Signup",
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          height: 1.5,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 220),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          decoration: customInputDecoration("Full Name"),
                        ),
                        TextField(
                          decoration:
                              customInputDecoration("Enter email or username"),
                        ),
                        TextField(
                          decoration: customInputDecoration("Password"),
                        ),
                        TextField(
                          decoration: customInputDecoration("Confirm Password"),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration customInputDecoration(String hintText) {
    return InputDecoration(
        hintText: hintText,
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
          color: Color(0xffb3b2b2),
        )),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xffb3b2b2))));
  }
}
