import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sebha extends StatelessWidget {
  static const String routeName = "Sebha";

  Sebha({super.key});

  @override
  Widget build(BuildContext context) {
    List<String>azkar =[
      "سبحان الله",
      "الحمد الله",
      "لا اله الا الله",
      "الله اكبر",
    ];
    int index =0;
    int counter =0;
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
              child: 
              Image.asset("assets/images/sebha.png")
          ),

          Expanded(
              flex: 3,
              child: Column(
                children: [
                  SizedBox(
                    height: 43,
                  ),
                  Container(
                    height: 39,
                    width: 154,
                    child: Text(
                      "عدد التسبيحات",
                      style: GoogleFonts.elMessiri(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF242424),
                      ),
                    ),
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
                      child: Text("$counter",
                          style: GoogleFonts.inter(
                            color: Color(0xFF242424),
                            fontWeight: FontWeight.w400,
                            fontSize: 25,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  InkWell(
                    onTap: () {

                    },
                    child: Container(
                      width: 137,
                      height: 51,
                      decoration: BoxDecoration(
                        color: Color(0xFFB7935F),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text("${azkar[index]}",
                            style: GoogleFonts.inter(
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.w400,
                              fontSize: 25,
                            )),
                      ),
                    ),
                  ),
                ],
              )),

        ],
      ),
    );
  }
}
