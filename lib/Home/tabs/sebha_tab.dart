import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sebha extends StatelessWidget {
  static const String routeName = "Sebha";
  Sebha({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 105,
          ),
          Container(
            height: 100,
            color: Colors.red,
            child: Image.asset("assets/images/head_sebha_logo.png"),
          ),
          Container(
            color: Colors.amberAccent,
            child: Image.asset("assets/images/body_sebha_logo.png"),
          ),
          SizedBox(
            height: 43,
          ),
          Container(
            height: 39,
            width: 154,
            child: Text("عدد التسبيحات",
            style: GoogleFonts.elMessiri(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Color(0xFF242424),
            ),),
          ),
          SizedBox(
            height: 26,
          ),
          Container(
            width: 69,
            height: 81,
            decoration: BoxDecoration(
              color: Color(0xFFB7935F),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Text("30",
                  style: GoogleFonts.inter(
                    color: Color(0xFF242424).withOpacity(.57),
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                  )),
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Container(
            width: 137,
            height: 51,
            decoration: BoxDecoration(
              color: Color(0xFFB7935F),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Center(
              child: Text("سبحان الله",
              style: GoogleFonts.inter(
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w400,
                fontSize: 25,
              )),
            ),
          ),


        ],
      ),
    );
  }
}
