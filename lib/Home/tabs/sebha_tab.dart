import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sebha extends StatefulWidget {
  static const String routeName = "Sebha";

  Sebha({super.key});

  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
  List<String> azkar = [
    "سبحان الله",
    "الحمد الله",
    "لا اله الا الله",
    "الله اكبر",
  ];
  int index = 0;
  int counter = 0;
  double turnes = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 4,
              child: Container(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      margin: EdgeInsets.all(65),
                      child: AnimatedRotation(
                        duration: Duration(
                          milliseconds: 25,
                        ),
                          turns: turnes,
                          child: Image.asset("assets/images/body_sebha_logo.png")
                      ),
                    ),
                    Container(
                        child:
                            Image.asset("assets/images/head_sebha_logo.png")),
                  ],
                ),
              )),
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  Text(
                    "عدد التسبيحات",
                    style: Theme.of(context).textTheme.bodyLarge,
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
                          style: Theme.of(context).textTheme.bodyLarge
                          )
                    ),
                    ),
                  SizedBox(
                    height: 22,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        counter++;
                        turnes+=.1;
                        if (counter > 33) {
                          counter = 0;
                          index++;
                          if (index == azkar.length) {
                            index = 0;
                          }
                        }
                      });
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
